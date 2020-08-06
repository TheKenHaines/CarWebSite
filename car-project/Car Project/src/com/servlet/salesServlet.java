package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.time.LocalDate;
import java.util.ArrayList;
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
import com.sale.Address;
import com.sale.Sale;
import com.vehicle.Vehicle;

@WebServlet("/salesServlet")
public class salesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void init(ServletConfig config) throws ServletException {
		super.init(config);

		List<Sale> sales = new ArrayList<Sale>();

		try {
			ServletContext context = getServletContext();
			InputStream is = context.getResourceAsStream("/WEB-INF/sales.txt");
			if (is != null) {
				InputStreamReader isr = new InputStreamReader(is);
				Scanner scanner = new Scanner(new File(
						"C:\\Users\\Kenneth Haines\\Desktop\\Elipse Workspace\\car-project\\Car Project\\WebContent\\WEB-INF\\cars.txt"));

				String line;

				while (scanner.hasNextLine()) {
					line = scanner.nextLine();
					
					String[] salesArray = line.split(";");
					Sale sale = new Sale();
					sale.setFirstName(salesArray[0]);
					sale.setLastName(salesArray[1]);
					String[] addressArray = salesArray[2].split(";");
					Address address = new Address(addressArray[0], addressArray[1], addressArray[2], addressArray[3]);
					sale.setCreditNum(salesArray[3]);
					sale.setCreditExp(salesArray[4]);
					String[] dateString = salesArray[5].split("/");
					int year = Integer.parseInt(dateString[2]);
					int month = Integer.parseInt(dateString[0]);
					int day = Integer.parseInt(dateString[1]);
					LocalDate date = LocalDate.of(year, month, day);
					sale.setDateSold(date);
				
				}
			}

		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		Repository.setSalesList(sales);

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		List<Sale> sales = Repository.getSalesList();
		session.setAttribute("sales", sales);
		RequestDispatcher rs = request.getRequestDispatcher("SalesReport.jsp");
		rs.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
