package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class AccountModel {
	
	public boolean login(String username, String password) {
	    Conexion con = new Conexion();
		Connection cn = con.con();
		try{
			Statement st = cn.createStatement();
			ResultSet rst = st.executeQuery("SELECT * FROM Login,Account where Login.UserID='"+ username +"' AND Login.Password='" + password + "' AND Account.AID = Login.AID AND Account.UGradeID = 255");
			if(rst.next())
				return true;
		}
		catch(SQLException ex){
			 System.out.println(ex);
			 return false;
		}
		
		return false;
	}
	
}
