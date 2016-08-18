package com;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

public class test {
	java.sql.Connection con=null;
	static String url = "jdbc:mysql://localhost:3306/bookstore";
	/**
	 * @param args
	 * @throws ClassNotFoundException 
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String userName = "root";
			String password = "123456";
			Connection con = DriverManager.getConnection(url,userName,password);   
            
            Statement st = con.createStatement();
            //执行语句得到结果集
            ResultSet rs = st.executeQuery("select * from userinfo");
            while(rs.next())
            {
            	String str = rs.getString(1);
            	  System.out.println(str);
            }
          
            //关闭结果集,语句
            rs.close();
            st.close();
            //归还连接
            con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
