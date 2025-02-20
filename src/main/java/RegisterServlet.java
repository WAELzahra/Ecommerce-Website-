
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Register", urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// get user input
		String fname = request.getParameter("RegisterFname");
		String lname = request.getParameter("RegisterLname");
		String email = request.getParameter("Registeremail");
		String password = request.getParameter("Registerpassword");
		String password2 = request.getParameter("RegisterCpassword");
		String error = ("All fields must be filled.");
		String success = ("Thank you for your registration.");
		String exists = ("Email is already registered.");
		if ((fname.isEmpty()) || (lname.isEmpty()) || (email.isEmpty()) || (password.isEmpty()) || (password2.isEmpty())) {
			request.setAttribute("error", error);
			doGet(request, response);
		} else {
			boolean found = UsersDBUtil.validate(email, password);
			if (!found) {
			UsersDBUtil.insertUser(fname, lname, email, password);
			request.setAttribute("success", success);
			doGet(request, response);
			}else {
				request.setAttribute("exists", exists);
				doGet(request, response);
			}
		}

	}

}
