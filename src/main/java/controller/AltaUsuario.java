package main.java.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.jasypt.util.password.BasicPasswordEncryptor;
import org.jasypt.util.password.PasswordEncryptor;

import main.java.model.dao.RolesDao;
import main.java.model.dao.UsuariosDao;
import main.java.utils.Cifrado;
import main.java.utils.HibernateUtil;
import main.java.utils.MetodosUtiles;

/**
 * Servlet implementation class AltaUsuario
 */
@WebServlet("/AltaUsuario")
public class AltaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = LogManager.getLogger(AltaUsuario.class);
	Session s;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AltaUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		s = HibernateUtil.getSessionFactory().openSession();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PasswordEncryptor encriptado = new BasicPasswordEncryptor();
		
		String email = request.getParameter("email");
		String nombre = request.getParameter("usuario");
		String password = request.getParameter("password");
		String apellido1 = request.getParameter("apellido1");
		String apellido2 = request.getParameter("apellido2");
		String direccion = request.getParameter("direccion");
		String localidad = request.getParameter("localidad");
		String provincia = request.getParameter("provincia");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		
		String passwordCifrado = Cifrado.cifrar(password);
		if(RolesDao.consultarRol(s, 2)) {
			if(UsuariosDao.insertarUsuario(s, 2, email, passwordCifrado, nombre, apellido1, apellido2, direccion, localidad, provincia, telefono, dni)) {
				HttpSession session = request.getSession(true);
				session.setAttribute("nombreUsuario", nombre);
				session.setAttribute("rolUsuario", MetodosUtiles.nombreRol(2));
				response.sendRedirect("Bienvenido.jsp");
			}else {
				response.sendRedirect("Registro.jsp");
			}
		}else {
			response.sendRedirect("Registro.jsp");
		}
		
	}

}
