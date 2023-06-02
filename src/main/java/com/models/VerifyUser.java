package com.models;

import org.hibernate.cfg.Configuration;

import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;

import org.hibernate.*;

public class VerifyUser  extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws  IOException, ServletException
    {
		String email = req.getParameter("email").trim();
		String password = req.getParameter("password").trim();
		
		res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        System.out.println(email);
        System.out.println(password);
        
        try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
       String url = "jdbc:mysql://localhost:3307/softwares";
       try (Connection con = DriverManager.getConnection(url, "root", "")) {
      
           try (PreparedStatement pstmt = con.prepareStatement("SELECT * FROM user WHERE email = ? AND password=? ")) {
               
               pstmt.setString(1, email);
               pstmt.setString(2, password);
               try (ResultSet rs = pstmt.executeQuery()) {
            	   boolean result = false;
              
                   while (rs.next()) {
//                       System.out.println(rs.getString(2));
//                       System.out.println(rs.getString(3));
//                       System.out.println(email.equals(rs.getString(2).trim()));
//                       System.out.println(rs.getString(3).trim() == password);
                       if(email.equals(rs.getString(2).trim()) && password.equals(rs.getString(5).trim()))
                       {
//                       	Cookie c = new Cookie("user_email", email);
//                       	res.addCookie(c);
                       	result = true;
                       	int id = rs.getInt(1);
                       	String name=rs.getString("name");
                       	HttpSession session = req.getSession();
                       	session.setAttribute("email", email);
                       	session.setAttribute("id", id);
                       	session.setAttribute("name", name);
                       	
                       	System.out.println(name);
                       	
                       	
                       	
                       	if(email.equals("jenis@gmail.com"))
                       	{
                       		res.sendRedirect("admin");
                       	}
                       	else
                       	{
                       		out.println("success");
                       		//res.sendRedirect("home");
                       		RequestDispatcher dd = req.getRequestDispatcher("/home");

                       		dd.forward(req, res);
                       	}
                       	
                       }
                       else {
                       	out.println("<HTML><HEAD><TITLE> Hello You!" + "</Title></HEAD>" + "<Body> Hello World!!!"
                           		+ "<p>User credentials not found</p>"
                           		+ "</BODY></HTML>");
                           out.close();
                       }
                   }
                   
                   if(!result)
                   {
                	   out.println("<script>alert('Oops!! Login caradantials did not match!');"
                	   		+ "window.location='/Software/';"
                	   		+ "</script>");
                	                      }
               }
               catch(SQLException ex)
               {
               	System.err.println("No Result found");
               }
           }
           catch(SQLException ex)
           {
           	System.err.println("No statement found");
           }
       } catch (SQLException ex) {
           System.err.println("SQLException: " + ex.getMessage());
       }
    }
}
