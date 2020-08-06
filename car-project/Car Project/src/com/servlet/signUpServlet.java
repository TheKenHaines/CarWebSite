package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.repository.Repository;
import com.user.User;


/**
 * Servlet implementation class signUpServlet
 */
@WebServlet("/signUpServlet")
public class signUpServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		
		user.setEmail(request.getParameter("email"));
		String fullName = request.getParameter("fullName");
		String[] nameArray = fullName.split(" ");
		user.setFirstName(nameArray[0]);
		user.setLastName(nameArray[nameArray.length-1   ]);
		String password = request.getParameter("password");
		String passwordCheck = request.getParameter("password2");
		
		if (password.equals(passwordCheck)) {
			user.setPassWord(password);
		} else {
			user.setPassWord("password");
		}
		
//		HttpSession session = request.getSession(true);
//		session.setAttribute("user", user);
		
		Repository.getUserList().add(user);
		RequestDispatcher rs = request.getRequestDispatcher("LogIn.jsp");
		rs.forward(request, response);
		
		
	}

}
