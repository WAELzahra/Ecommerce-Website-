

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Forgot", urlPatterns = "/Forgot")
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/Forgot.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get input
		String email = request.getParameter("LoginEmail");
		String error = ("Insert an email.");
		String exist = ("Check your email for instructions.");
		// check if email exists in database
		String notexist = ("Account isn't registered.");
		int otpvalue = 0;
		Random rand = new Random();
		HttpSession MySession = request.getSession();
		
		if (email.isEmpty()) {
			request.setAttribute("error", error);
			doGet(request, response);
		}else {
			boolean found = UsersDBUtil.forgotvalidation(email);
			if (found == true) {
				// generate random number to send to email
				otpvalue = rand.nextInt(1255650);
				String to = email;
				// configure email properties
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");
				Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						// generate app password from google
						return new PasswordAuthentication("noreply1122231@gmail.com", "qefgkspwgvzjlygb");
					}
				});
				try {
					// message body 
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress(email));
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					message.setSubject("Forgot password");
					message.setText("Hello, your OTP is: " + otpvalue);
					Transport.send(message);
				}

				catch (MessagingException e) {
					throw new RuntimeException(e);
				}
				// set attributes to test on later in validateservlet
				MySession.setAttribute("otp", otpvalue);
				MySession.setAttribute("email", email);
				getServletContext().getRequestDispatcher("/Otpvalidate.jsp").forward(request, response);
			}else {
				request.setAttribute("notexist", notexist);
				doGet(request, response);
			}
		}
	}

}
