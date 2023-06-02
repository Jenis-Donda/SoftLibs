package com.models;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Payment extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		int pid = Integer.parseInt(req.getParameter("pid").trim());
		String pname = req.getParameter("pname").trim();
		int pprice = Integer.parseInt(req.getParameter("pprice").trim());
		String cardHolder = req.getParameter("username").trim();
		long cardnumber = Long.parseLong(req.getParameter("cardNumber").trim());
		int month = Integer.parseInt(req.getParameter("month").trim());
		int year = Integer.parseInt(req.getParameter("year").trim());
		int cvv = Integer.parseInt(req.getParameter("cvv").trim());
//        out.println("hello");
//        out.println(pid + " " + pname + " " + pprice);
//        out.println(cardHolder + " " + cardnumber+ " " + month  + " " + year+ " " + cvv);
		HttpSession sess = req.getSession();
		String email = "unkown";
		int id = 0;

		if (sess != null) {
			email = (String) sess.getAttribute("email");
			id = (Integer) sess.getAttribute("id");

		}

		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");

		SessionFactory factory = cfg.buildSessionFactory();

		Orderdata order = new Orderdata();

		order.setCid(id);
		order.setCname(email);
		order.setPid(pid);
		order.setPname(pname);
		order.setTid(cardnumber);
		order.setAmount(pprice);
		
		Session s = factory.openSession();
		Transaction  tx = s.beginTransaction();
		
		s.save(order);
		
		tx.commit();
		s.close();
		factory.close();
		
		res.sendRedirect("done");
	}

}
