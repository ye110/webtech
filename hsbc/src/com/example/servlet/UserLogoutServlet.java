package com.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/userlogout")
public class UserLogoutServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("======== Inside UserLogoutServlet.doGet() ========");

		HttpSession session = request.getSession();	
		session.invalidate();
	
		PrintWriter writer = response.getWriter();
		writer.write("<h1>User Logged out successfully!!</h1>");
	
	}

}
