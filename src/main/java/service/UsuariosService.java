package main.java.service;

import org.hibernate.Session;
import main.java.model.dao.UsuariosDao;
import main.java.model.entities.Usuarios;

public class UsuariosService {
	
	public static boolean comprobarUsuario(Session s, String dni) {
		if(UsuariosDao.consultarUsuario(s, dni)) {
			return true;
		}
		return false;
	}
}
