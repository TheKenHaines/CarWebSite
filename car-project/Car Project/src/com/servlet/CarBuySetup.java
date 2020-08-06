package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.repository.Repository;
import com.vehicle.Vehicle;

@WebServlet("/CarBuySetup")
public class CarBuySetup extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	CarBuySetup() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String vinNum = request.getParameter("vin");
		for (Vehicle car : Repository.getCarList()) {
			if (car.getVinNum().equals(vinNum)) {
				session.setAttribute("car", car);
			}
		}
		RequestDispatcher rs = request.getRequestDispatcher("BuyCar.jsp");
		rs.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
