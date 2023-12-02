package com.user.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String username, String password) {
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM user WHERE username='" + username + "' AND password='" + password + "'";
	        rs = stmt.executeQuery(sql);
	        
	        if (rs.next()) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}


	public static List<User> getCustomer(String userName) {
		ArrayList<User> user = new ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				User cus = new User(id, name, email, phone, username, password);
				user.add(cus);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;	
	}

	public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
					+ "where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<User> getCustomerDetails(String Id) {
		int convertedID = Integer.parseInt(Id);
		ArrayList<User> cus = new ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				User c = new User(id, name, email, phone, username, password);
				cus.add(c);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}	
		return cus;	
	}

	public static boolean deleteCustomer(String id) {
		int convId = Integer.parseInt(id);
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where id='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
