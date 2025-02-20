import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsersDBUtil {
	
	public static void deleteAccount(String email, String password) {
		
		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("DELETE FROM users WHERE email=? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static void setPassword(String newpass, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("UPDATE users SET password=? WHERE password = ?");
			stmt.setString(1, newpass);
			stmt.setString(2, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
	
	public static void setEmail(String newemail, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("UPDATE users SET email=? WHERE email = ? AND password = ?");
			stmt.setString(1, newemail);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
	
	public static void setLastname(String lastname, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("UPDATE users SET lastname=? WHERE email = ? AND password = ?");
			stmt.setString(1, lastname);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public static void setFirstname(String firstname, String email, String password) {

		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("UPDATE users SET firstname=? WHERE email = ? AND password = ?");
			stmt.setString(1, firstname);
			stmt.setString(2, email);
			stmt.setString(3, password);
			rs = stmt.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public static boolean Updatepassword(String password, String email) {

		boolean updated = false;
		PreparedStatement stmt;
		int rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("UPDATE users SET password=? WHERE email = ?");
			stmt.setString(1, password);
			stmt.setString(2, email);
			rs = stmt.executeUpdate();

			if (rs > 0) {
				updated = true;
			} else {
				updated = false;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return updated;

	}

	public static String getUsername(String email, String password) {
		String Name = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("SELECT * FROM users WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String name = rs.getString(2);
				Name = name;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Name;
	}

	public static String getLastname(String email, String password) {

		String Lastname = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("SELECT * FROM users WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String lastname = rs.getString(3);
				Lastname = lastname;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Lastname;
	}

	public static String getEmail(String email, String password) {
		String Email = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("SELECT * FROM users WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String dbemail = rs.getString(4);
				Email = dbemail;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Email;
	}

	public static String getPassword(String email, String password) {
		String Password = null;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("SELECT * FROM users WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			while (rs.next()) {
				String pass = rs.getString(5);
				Password = pass;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return Password;
	}

	public static boolean forgotvalidation(String email) {
		boolean found = false;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("SELECT * FROM users WHERE email= ?");
			stmt.setString(1, email);
			rs = stmt.executeQuery();

			if (rs.next()) {
				found = true;
			} else {
				found = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return found;
	}

	public static boolean validate(String email, String password) {
		boolean found = false;
		PreparedStatement stmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			stmt = con.prepareStatement("SELECT * FROM users WHERE email= ? AND password = ?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			if (rs.next()) {
				found = true;
			} else {
				found = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return found;
	}

	public static boolean insertUser(String firstname, String lastname, String email, String password) {

		boolean success = false;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
			Statement stmt = con.createStatement();
			String sql = ("INSERT INTO users VALUES(0,'" + firstname + "','" + lastname + "','" + email + "','"
					+ password + "')");
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return success;
	}

}
