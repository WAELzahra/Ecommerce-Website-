

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ChangePassword", urlPatterns = "/ChangePassword")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/ChangePassword.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get attributes from ForgotServlet
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		// get user input
		String pass1 = request.getParameter("password1");
		String pass2 = request.getParameter("password2");
		String error = ("Passwords do not match.");
		boolean updated =UsersDBUtil.Updatepassword(pass2, email);
		
		if (pass1.equals(pass2)) {
			if (updated) {
				getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("error", error);
			getServletContext().getRequestDispatcher("/ChangePassword.jsp").forward(request, response);
		}
	}

}
