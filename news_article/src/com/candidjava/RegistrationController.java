package com.candidjava;

import java.io.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDataServlet
 */
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//creating arraylist object of type category class
	static List<Category> list = new ArrayList<Category>();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	 
		
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String title = request.getParameter("title");
			
		String body = request.getParameter("body");
		
		String author = request.getParameter("author");
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    Date date = new Date();
	    //String output = "";
	    try {
	        date = dateFormat.parse(request.getParameter("date"));
	        //System.out.println(date.toString()); // Wed Dec 04 00:00:00 CST 2013

	        //output = dateFormat.format(date); 
	        //System.out.println(output); // 2013-12-04
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
		
		Category c = new Category();
		c.setTitle(title);
		c.setBody(body);
		c.setAuthor(author);
		c.setDate(date);
		
		list.add(c);		
		request.setAttribute("servletName", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	}

}
