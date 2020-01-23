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
					request.getRequestDispatcher("panel.jsp").forward(request, response);
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
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
	}

	private Account checkCookie(HttpServletRequest request) {
		Cookie []cookies = request.getCookies();
		Account account=null;
		if(cookies == null) {
			return null;
		}else {
			String username = "", password="";
			for(Cookie ck : cookies) {
				if(ck.getName().equalsIgnoreCase("username"))
					username = ck.getValue();
				if(ck.getName().equalsIgnoreCase("password"))
					password = ck.getValue();
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
