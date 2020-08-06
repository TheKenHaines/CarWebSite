package com.servlet;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.repository.Repository;
import com.vehicle.Vehicle;

@WebServlet("/UpdateFileServlet")
public class UpdateFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateFileServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String vin = request.getParameter("vin");
		
		for (int i=0; i<Repository.getCarList().size(); i++) {
			Vehicle currentCar = Repository.getCarList().get(i);
			if (currentCar.getVinNum().contentEquals(vin)) {
				Repository.getCarList().remove(i);
			}
		}
		
		try {
	
			File newFile = new File("C:\\Users\\Kenneth Haines\\Desktop\\Elipse Workspace\\car-project\\Car Project\\WebContent\\WEB-INF\\cars.txt");
			newFile.createNewFile();
			
			FileWriter fw = new FileWriter(newFile);
			BufferedWriter bw = new BufferedWriter(fw);
			
			for (Vehicle car: Repository.getCarList()) { 
				bw.write(car.toInventoryFile());
				bw.newLine();
			}


			bw.close();

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rs = request.getRequestDispatcher("Inventory.jsp");
		rs.forward(request, response);
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
