package main.java.dao;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;


import main.java.entities.Roles;

public class RolesDao {

	static Logger logger = LogManager.getLogger(RolesDao.class);
	
	public static boolean consultarRol(Session s, int id) {
		String hql = "from Roles r where id = :id";
		Roles r = s.createQuery(hql, Roles.class).setParameter("id", id).setMaxResults(1).uniqueResult();
		if(r != null) {
			logger.info("Se ha encontrado el rol");
			return true;
		}
		logger.warn("No se ha encontrado el rol");
		return false;
	}
	
	public static List<Roles> listarRoles(Session s){
		List<Roles> lista;
		String hql = "from Roles";
		lista = s.createQuery(hql, Roles.class).list();
		return lista;
	}
}
