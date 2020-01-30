package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.*;
import model.*;

/**
 * Servlet implementation class Panel
 */
@WebServlet("/Panel")
public class Panel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Panel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		if(action == null) {
			Account account = checkCookie(request);
			if(account == null) {
				request.getRequestDispatcher("index.jsp").forward(request, response);
				session.removeAttribute("error");
			}
			else {
				AccountModel accModel = new AccountModel();
				if(accModel.login(account.getUsername(), account.getPassword())){
					session.setAttribute("username", account.getUsername());
					session.removeAttribute("error");
					session.setAttribute("username_recordar", account.getUsername()); //agregar username recordar a la sesion
					request.getRequestDispatcher("panel.jsp").forward(request, response);
					request.getRequestDispatcher("indexpage.jsp").forward(request, response);
				}else {
					session.setAttribute("error","Cuenta invalida");
					session.removeAttribute("username");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
		}else {
			if(action.equalsIgnoreCase("logout")){
				request.removeAttribute("username");
				Cookie []cookies = request.getCookies();
				for(Cookie ck : cookies) {
					if(ck.getName().equalsIgnoreCase("username")) {
						ck.setMaxAge(0);
						response.addCookie(ck);
					}
					if(ck.getName().equalsIgnoreCase("password")) {
						ck.setMaxAge(0);
						response.addCookie(ck);
					}
				}
				session.removeAttribute("username");
				//esto redirecciona a cualquier pagina que sea agregada (debe ser agregada aca)
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else if(action.equalsIgnoreCase("accounts")) {
				request.getRequestDispatcher("accounts.jsp").forward(request, response);
			}else if(action.equalsIgnoreCase("characters")) {
				request.getRequestDispatcher("characters.jsp").forward(request, response);
			}else if(action.equalsIgnoreCase("login")) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else if(action.equalsIgnoreCase("clans")) {
				request.getRequestDispatcher("clans.jsp").forward(request, response);
			}else if(action.equalsIgnoreCase("dcoins")) {
				request.getRequestDispatcher("dcoins.jsp").forward(request, response);
			}else if(action.equalsIgnoreCase("ecoins")) {
				request.getRequestDispatcher("ecoins.jsp").forward(request, response);
			}
		}
	}

	private Account checkCookie(HttpServletRequest request) {
		Cookie []cookies = request.getCookies();
		Account account=null;
		if(cookies == null) {
			return null;
		}else {
			String username = "", password="", username_recordar=""; //agregar user name recordar falta testear si sirve sin esto
			for(Cookie ck : cookies) {
				if(ck.getName().equalsIgnoreCase("username"))
					username = ck.getValue();
				if(ck.getName().equalsIgnoreCase("password"))
					password = ck.getValue();
				if(ck.getName().equalsIgnoreCase("username_recordar"))
					username_recordar = ck.getValue();
			}
			if(!username.isEmpty() && !password.isEmpty())
				account = new Account(username,password);
		}
		return account;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		AccountModel accModel = new AccountModel();
		if(action == null) {
			String username = request.getParameter("username").trim();
			String password = request.getParameter("password").trim();
			boolean remember = request.getParameter("remember") != null;
			boolean username_recordar = request.getParameter("username_recordar") != null; //verificar si checkbox esta activado
			if(accModel.login(username, password)) {
				session.removeAttribute("error");
				session.setAttribute("username", username);
				if(remember) {
					Cookie ckUsername = new Cookie ("username", username);
					ckUsername.setMaxAge(3600);
					response.addCookie(ckUsername);
					Cookie ckPassword = new Cookie ("password", password);
					ckPassword.setMaxAge(3600);
					response.addCookie(ckPassword);
				}
				if(username_recordar) {
					session.setAttribute("username_recordar", username); //agregar atributo a la session para recordar username
					Cookie ckUsernameRecordar = new Cookie ("username_recordar", username);
					ckUsernameRecordar.setMaxAge(60 * 60 * 24 * 180);
					response.addCookie(ckUsernameRecordar);//agregar la cookie de username
				}
				if(!username_recordar){
					session.removeAttribute("username_recordar");
					Cookie[] cookies = request.getCookies();
					for(Cookie ck : cookies) {
						if(ck.getName().equalsIgnoreCase("username_recordar")) {
							ck.setMaxAge(0);
							response.addCookie(ck);
						}							
					}//en caso este desactivado el checkbox cuando inicies sesion se eliminara todo relacionado con la sesion y cookies de
					//recordar_username
				}
				request.getRequestDispatcher("panel.jsp").forward(request, response);
			}else {
				session.setAttribute("error","Cuenta invalida");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				session.removeAttribute("error");
				session.removeAttribute("username");
			}
		}else {
			
		}
	}

}
