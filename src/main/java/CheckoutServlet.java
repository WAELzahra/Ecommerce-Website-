
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Checkout", urlPatterns = "/Checkout")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/Checkout.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get user input to test on 
		String name = request.getParameter("Checkoutname");
		String number = request.getParameter("Checkoutphonenumber");
		String email = request.getParameter("Checkoutemail");
		String address = request.getParameter("CheckoutAddress");
		String error = ("All fields must be filled.");

		if ((name.isEmpty()) || (number.isEmpty()) || (email.isEmpty()) || (address.isEmpty())) {
		
			request.setAttribute("error", error);
			doGet(request, response);
			
		} else {
			getServletContext().getRequestDispatcher("/Checkoutsuccess.jsp").forward(request, response);
		}
	}

}
