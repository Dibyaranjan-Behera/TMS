package profile;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{

		UserBean ub = new UserBean();

		ub.setUname(req.getParameter("uname"));
		ub.setEmail(req.getParameter("email"));
		ub.setPhoneNumber(Long.parseLong(req.getParameter("phoneNumber")));
		ub.setGender(req.getParameter("gender"));
		ub.setDob(LocalDate.parse(req.getParameter("dob")));
		//String dobStr = req.getParameter("dob");
		ub.setPassword(req.getParameter("password"));
		ub.setUsername(req.getParameter("email"));
		System.out.println("Uname: " + req.getParameter("uname"));
		System.out.println("Email: " + req.getParameter("email"));
		System.out.println("PhoneNumber: " + req.getParameter("phoneNumber"));
		System.out.println("Gender: " + req.getParameter("gender"));
		System.out.println("DOB: " + req.getParameter("dob"));
		System.out.println("Password: " + req.getParameter("password"));

		int k = new RegisterDAO().insert(ub);

		if (k > 0) {
		    // Store success message in session
		    HttpSession sessionRegister = req.getSession();
		    sessionRegister.setAttribute("successMessage", "Kudos!!! Registration Successful.");
		    sessionRegister.setAttribute("successSubMessage", "Please sign in below using your credentials.");

		    // Redirect to login page
		    res.sendRedirect("login.jsp");
		}



	}
}
