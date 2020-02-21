<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>


<%!
	public String viewAccounts() {
	    StringBuilder sb=new StringBuilder();
	    Conexion con = new Conexion();
		Connection cn = con.con();
		int i = 1;
		try{
			Statement st = cn.createStatement();
			ResultSet rst = st.executeQuery("SELECT * FROM Account");
			while(rst.next()){
	        sb.append("<tr><th scope='row'>"+ i +"</th>"+
	        			"<td>" + rst.getInt("AID") + "</td>"+
	        		 	"<td>" + rst.getString("UserID") + "</td>"+
						"<td>" + rst.getInt("UGradeID") + "</td>"+
						"<td>" + rst.getString("DonatorCoins") + "</td>"+
						"<td>" + rst.getString("EventCoins") + "</td>"+
						"<td>" + rst.getString("Country") + "</td>"+
						"<td>" + rst.getInt("RedColor") + "</td>"+
						"<td>" + rst.getInt("GreenColor") + "</td>"+
						"<td>" + rst.getInt("BlueColor") + "</td>"+
						"<td>" + rst.getString("sq") + "</td>"+
						"<td>" + rst.getString("sa") + "</td>"+
						"</tr>");
	        i++;
			}
		}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String viewCharacters() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	int i = 1;
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT * FROM Character");
		while(rst.next()){
        sb.append("<tr>" +
				"<th scope='row'>" + i + "</th>"+
				"<td>"+ rst.getInt("CID") +"</td>"+
				"<td>"+ rst.getInt("AID") +"</td>"+
				"<td>"+ rst.getString("Name") +"</td>"+
					"<td>"+ rst.getInt("Sex") +"</td>"+
					"<td>"+ rst.getInt("Level") +"</td>"+
					"<td>"+ rst.getString("XP") +"</td>"+
					"<td>"+ rst.getInt("BP") +"</td>"+
					"<td>"+ rst.getInt("PlayTime") +"</td>"+
					"<td>"+ rst.getInt("KillCount") +"</td>"+
					"<td>"+ rst.getInt("DeathCount") +"</td>"+
					"<td>"+ rst.getInt("Ranking") +"</td>"+
					"</tr>");
	        i++;
			}
		}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String viewClans() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	int i = 1;
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT * FROM Clan, Character where Clan.MasterCID = Character.CID AND Clan.DeleteFlag!=1 ORDER BY Clan.CLID");
		while(rst.next()){
        sb.append("<tr>" +
				"<th scope='row'>" + i + "</th>"+
				"<td>"+ rst.getInt("CLID") +"</td>"+
				"<td>"+ rst.getString("Name") +"</td>"+
				"<td>"+ rst.getString(27) +"</td>"+
					"<td>"+ rst.getInt("Point") +"</td>"+
					"<td>"+ rst.getInt("Wins") +"</td>"+
					"<td>"+ rst.getInt("Losses") +"</td>"+
					"</tr>");
	        i++;
			}
		}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String viewAllLogins() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	int i = 1;
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT * FROM Login order by UserID asc");
		while(rst.next()){
        sb.append("<tr>" +
				"<th scope='row'>" + i + "</th>"+
				"<td>"+ rst.getString("UserID") +"</td>"+
				"<td>"+ rst.getInt("AID") +"</td>"+
				"<td>************</td>"+
					"<td>"+ rst.getString("LastIP") +"</td>"+
					"<td>"+ rst.getString("LastConnDate") +"</td>"+
					"</tr>");
	        i++;
			}
		}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String LastAccount() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT TOP 1 UserID FROM Account ORDER BY AID DESC");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String TotalAccount() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT COUNT(AID) FROM Account");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String TotalAccountAdministrators() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT COUNT(AID) FROM Account where UGradeID=255");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String TotalCharacters() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT COUNT(CID) FROM Character");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String TotalClans() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT COUNT(CLID) FROM Clan where DeleteFlag!=1");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String LastDonator() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT TOP 1 IDUser FROM PaypalDonate ORDER BY ID DESC");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String Last2Donator() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT * FROM PaypalDonate where ID = ((SELECT TOP 1 ID FROM PaypalDonate ORDER BY ID DESC)-1)");
		while(rst.next()){
         String i = rst.getString("IDUser");
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String TopDonatorCoins() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT TOP 1 UserID FROM Account ORDER BY DonatorCoins DESC");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
public String TopEventCoins() {
    StringBuilder sb=new StringBuilder();
    Conexion con = new Conexion();
	Connection cn = con.con();
	try{
		Statement st = cn.createStatement();
		ResultSet rst = st.executeQuery("SELECT TOP 1 UserID FROM Account ORDER BY EventCoins DESC");
		while(rst.next()){
         String i = rst.getString(1);
         sb.append("<b>"+ i +"</b>");
		}
	}
		catch(SQLException ex){
			 sb.append(ex);
			 System.out.println(ex);
		}
	    return sb.toString();
	}
%>   