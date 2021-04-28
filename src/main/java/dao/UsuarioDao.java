package main.java.dao;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;

import main.java.entities.Usuarios;

public class UsuarioDao {
	
	static Logger logger = LogManager.getLogger(UsuarioDao.class);
	
	static boolean consultarUsuario(Session s, int idCliente) {
		String hql = "from Usuarios u where u.id = :idCliente";
		
		if(s.createQuery(hql, Usuarios.class) != null) {
			logger.info("Se ha encontrado el usuario");
			return true;
		}
		logger.warn("No se ha encontrado el usuario");
		return false;
	}
}
