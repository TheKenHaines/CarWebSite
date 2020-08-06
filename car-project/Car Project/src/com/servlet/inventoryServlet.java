package com.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.repository.Repository;
import com.sun.tools.javac.Main;
import com.vehicle.Vehicle;

@WebServlet("/inventoryServlet")
public class inventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

		List<Vehicle> cars = new ArrayList<Vehicle>();

		try {
			ServletContext context = getServletContext();
			InputStream is = context.getResourceAsStream("/WEB-INF/cars.txt");
			if (is != null) {
				InputStreamReader isr = new InputStreamReader(is);
				Scanner scanner = new Scanner(new File(
						"C:\\Users\\Kenneth Haines\\Desktop\\Elipse Workspace\\car-project\\Car Project\\WebContent\\WEB-INF\\cars.txt"));

				String line;

				while (scanner.hasNextLine()) {
					line = scanner.nextLine();

					String[] carInfoArray = line.split(";");
					Vehicle car = new Vehicle();
					car.setMake(carInfoArray[0]);
					car.setModel(carInfoArray[1]);
					car.setYear(Integer.parseInt(carInfoArray[2]));
					car.setColor(carInfoArray[3]);
					car.setMilesRan(Double.parseDouble(carInfoArray[4]));
					car.setPrice(Double.parseDouble(carInfoArray[5]));
					car.setVinNum(carInfoArray[6]);
					car.setPicturePath(carInfoArray[7]);
					car.setDescription(carInfoArray[8]);
					String[] dateString = carInfoArray[9].split("/");
					int year = Integer.parseInt(dateString[2]);
					int month = Integer.parseInt(dateString[0]);
					int day = Integer.parseInt(dateString[1]);
					LocalDate date = LocalDate.of(year, month, day);
					car.setDateEnteredIntoInventory(date);
					car.setIsNew(Boolean.parseBoolean(carInfoArray[10]));
					cars.add(car);
				}
			}

		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		Repository.setCarList(cars);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		List<Vehicle> cars = Repository.getCarList();
		session.setAttribute("cars", cars);
		RequestDispatcher rs = request.getRequestDispatcher("Inventory.jsp");
		rs.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
