package main.java.dao;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;

import main.java.entities.Usuarios;

public class UsuariosDao {
	
	static Logger logger = LogManager.getLogger(UsuariosDao.class);
	
	public static boolean consultarUsuario(Session s, int idCliente) {
		String hql = "from Usuarios u where u.id = :idCliente";
		
		if(s.createQuery(hql, Usuarios.class) != null) {
			logger.info("Se ha encontrado el usuario");
			return true;
		}
		logger.warn("No se ha encontrado el usuario");
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
}
