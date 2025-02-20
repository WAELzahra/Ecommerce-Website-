
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = "/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// get user input
		String email = request.getParameter("LoginEmail");
		String password = request.getParameter("LoginPassword");
		String error = ("Username or password is wrong.");
		boolean found;
		HttpSession session = request.getSession();
		
		found = UsersDBUtil.validate(email, password);
		// test if user is found or no
		if (found == true ) {
			String username = UsersDBUtil.getUsername(email, password);
			String lastname = UsersDBUtil.getLastname(email, password);
			String Email = UsersDBUtil.getEmail(email, password);
			String pass = UsersDBUtil.getPassword(Email, password);
			session.setAttribute("username", username);
			session.setAttribute("lastname", lastname);
			session.setAttribute("email", Email);
			session.setAttribute("password", pass);
			getServletContext().getRequestDispatcher("/LoginSuccess.jsp").forward(request, response);	
		}else {
			request.setAttribute("error", error);
			doGet(request, response);
		}

	}

}
