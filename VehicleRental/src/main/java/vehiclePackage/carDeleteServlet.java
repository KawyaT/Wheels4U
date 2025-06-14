package vehiclePackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/carDeleteServlet")
public class carDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String carId = request.getParameter("carId");
		
		boolean isTrue;
		isTrue = carController.deletedata(carId);
		
		if(isTrue == true) {
			String alertMessage = "Car Delete Successfull";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='carGetallServlet';</script>");
		}
		else {
			List<carModel> carDetails = carController.getById(carId);
			request.setAttribute("carDetails", carDetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
		
	}

}
