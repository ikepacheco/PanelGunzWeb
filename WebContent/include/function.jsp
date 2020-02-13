<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.jsp.JspWriter" %>
<%@ page import="java.io.*" %>


<%!
	void viewAccounts (){
		try{
			Conexion con = new Conexion();
			Connection cn =con.con();
			Statement st = cn.createStatement();
			ResultSet rst = st.executeQuery("SELECT * FROM Accounts");
			JspWriter out=null;
			while(rst.next()){
				int i = 1;
				out.println("<tr>");
					out.println("<th scope='row'>"+ i +"</th>");
					out.println("<td>"+rst.getInt("AID")+"</td>");
					out.println("<td>"+rst.getString("UserID")+"</td>");
					out.println("<td>"+rst.getInt("UGradeID")+"</td>");
					out.println("<td>"+rst.getString("DCoins")+"</td>");
					out.println("<td>"+rst.getString("EventCoins")+"</td>");
					out.println("<td>"+rst.getString("Country")+"</td>");
					out.println("<td>"+rst.getInt("RedColor")+"</td>");
					out.println("<td>"+rst.getInt("GreenColor")+"</td>");
					out.println("<td>"+rst.getInt("BlueColor")+"</td>");
					out.println("<td>"+rst.getString("sq")+"</td>");
					out.println("<td>"+rst.getString("sa")+"</td>");
				out.println("</tr>");
				i++;
			}
		}
		catch(IOException | SQLException ex){
			
		}
	}
%>