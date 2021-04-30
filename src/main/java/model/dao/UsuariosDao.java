package main.java.model.dao;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;

import main.java.model.entities.Usuarios;


public class UsuariosDao {
	
	static Logger logger = LogManager.getLogger(UsuariosDao.class);
	
	public static boolean consultarUsuario(Session s, String dni) {
		String hql = "from Usuarios u where dni = :dni";
		Usuarios u = s.createQuery(hql, Usuarios.class).setParameter("dni", dni).setMaxResults(1).uniqueResult();
		if(u != null) {
			logger.info("Se ha encontrado el usuario");
			return true;
		}
		logger.info("No se ha encontrado el usuario");
		return false;
	}
	
	public static Usuarios devolverUsuarioEmail(Session s, String email) {
		String hql = "from Usuarios u where email = :email";
		Usuarios u = s.createQuery(hql, Usuarios.class).setParameter("email", email).setMaxResults(1).uniqueResult();
		
		if(u != null) {
			logger.info("El usuario existe");
		}else {
			logger.warn("El usuario no existe");
		}
		
		return u;
	}
	
	public static boolean insertarUsuario(Session s, int rol, String email, String password, String nombre, String apellido1, String apellido2, String direccion, String localidad, String provincia, String telefono, String dni) {
		boolean correcto = false;
		Transaction t = s.beginTransaction();
		try {
			Usuarios u = new Usuarios(rol, email, password, nombre, apellido1, apellido2, direccion, localidad, provincia, telefono, dni);
			if(!UsuariosDao.consultarUsuario(s, u.getDni())) {
				s.save(u);
				t.commit();
				logger.info("Usuario creado");
				correcto = true;
			}else {
				logger.warn("El usuario ya existe");
			}
		}catch(Exception ex) {
			logger.error(ex);
			t.rollback();
		}
		return correcto;
	}
}
