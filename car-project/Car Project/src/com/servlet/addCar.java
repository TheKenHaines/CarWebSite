package com.servlet;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.repository.Repository;
import com.vehicle.Vehicle;

@WebServlet("/addCar")
public class addCar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addCar() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Vehicle car = new Vehicle();
		car.setMake(request.getParameter("make"));
		car.setModel(request.getParameter("model"));
		car.setYear(Integer.parseInt(request.getParameter("year")));
		car.setColor(request.getParameter("color"));
		car.setMilesRan(Double.parseDouble(request.getParameter("milesRan")));
		car.setPrice(Double.parseDouble(request.getParameter("price")));
		car.setPicturePath(request.getParameter("picturePath"));
		car.setVinNum(request.getParameter("VIN"));
		car.setDescription(request.getParameter("desc"));
		LocalDate date = LocalDate.now();
		car.setDateEnteredIntoInventory(date);
		String bool = request.getParameter("isNew");
		car.setIsNew(Boolean.parseBoolean(bool));
	

		Repository.getCarList().add(car);

		try {
			File file = new File(
					"C:\\Users\\Kenneth Haines\\Desktop\\Elipse Workspace\\car-project\\Car Project\\WebContent\\WEB-INF\\cars.txt");
			if (!file.exists()) {
				file.createNewFile();
			}

			FileWriter fw = new FileWriter(file, true);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.newLine();
			bw.write(car.toInventoryFile());
			bw.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rs = request.getRequestDispatcher("inventoryServlet");
		rs.forward(request, response);

	}
}
