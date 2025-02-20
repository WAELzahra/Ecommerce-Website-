
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Dashboard", urlPatterns = "/Dashboard")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/dashboard.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// get existing attributes from database to display
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		String lastname = (String) session.getAttribute("lastname");
		String email = (String) session.getAttribute("email");
		String password = (String) session.getAttribute("password");
		// get new user inputs
		String newusername = request.getParameter("inputfirstname");
		String newlastname = request.getParameter("inputlastname");
		String newemail = request.getParameter("inputemail");
		String newpassword = request.getParameter("inputpassword");
		String updated = ("Profile updated.");
		String deleted = ("Account deleted.");
		// check if user wants to update or delete
		String choice = request.getParameter("submit");

		if (choice.equals("Update")) {
			if (!newusername.isEmpty()) {
				UsersDBUtil.setFirstname(newusername, email, password);
				request.setAttribute("username", newusername);
			}
			if (!newlastname.isEmpty()) {
				UsersDBUtil.setLastname(newlastname, email, password);
				request.setAttribute("lastname", newlastname);
			}
			if (!newemail.isEmpty()) {
				UsersDBUtil.setEmail(newemail, email, password);
				request.setAttribute("email", newemail);
			}
			if (!newpassword.isEmpty()) {
				UsersDBUtil.setPassword(newpassword, password);
			}
			request.setAttribute("updated", updated);
		} else if (choice.equals("Delete")) {
			UsersDBUtil.deleteAccount(email, password);
			request.setAttribute("Deleted", deleted);
		}
		doGet(request, response);
	}
}
