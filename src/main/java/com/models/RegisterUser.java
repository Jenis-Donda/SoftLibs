package com.models;

import org.hibernate.cfg.Configuration;



import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;

import org.hibernate.*;

public class RegisterUser extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws  IOException
    {
		String name = req.getParameter("username").trim();
		String email = req.getParameter("email").trim();
		long number = Long.parseLong(req.getParameter("number").trim());
		String password1 = req.getParameter("password1").trim();
		String password2 = req.getParameter("password2").trim();
		
		res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
		if(password1.equals(password2))
		{
			Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");
			
			SessionFactory factory = cfg.buildSessionFactory();
			
			User user = new User();
			
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password1);
			user.setNumber(number);
			user.setAddress("");
			
			Session s = factory.openSession();
			Transaction  tx = s.beginTransaction();
			
			s.save(user);
			
			tx.commit();
			s.close();
			
			factory.close();
			
			res.sendRedirect("http://localhost:8085/Software/");
		}
		else
		{
			out.println("Both password not match");
		}
		
    }

}
