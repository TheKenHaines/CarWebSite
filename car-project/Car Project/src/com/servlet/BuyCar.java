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
import javax.servlet.http.HttpSession;

import com.repository.Repository;
import com.sale.Address;
import com.sale.Sale;


@WebServlet("/BuyCar")
public class BuyCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public BuyCar() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Sale sale = new Sale();
		sale.setFirstName(request.getParameter("firstName"));
		sale.setLastName(request.getParameter("lastName"));
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		Address address = new Address(street, city, state, zip);
		sale.setAddress(address);
		sale.setCreditNum(request.getParameter("creditNum"));
		sale.setCreditExp(request.getParameter("creditExp"));
		LocalDate today = LocalDate.now();
		sale.setDateSold(today);
		
		Repository.getSalesList().add(sale);
		
		try {
			File file = new File(
					"C:\\Users\\Kenneth Haines\\Desktop\\Elipse Workspace\\car-project\\Car Project\\WebContent\\WEB-INF\\sales.txt");
			if (!file.exists()) {
				file.createNewFile();
			}

			FileWriter fw = new FileWriter(file, true);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.newLine();
			bw.write(sale.toFile());
			bw.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String vin = request.getParameter("vin");
		session.setAttribute("vin", vin);
		RequestDispatcher rs = request.getRequestDispatcher("UpdateFileServlet");
		rs.forward(request, response);
		
		
	}

}
