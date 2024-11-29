package profile;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LogInServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		String uName = req.getParameter("userName");
		String pWord = req.getParameter("password");
		UserBean ub = new LogInDAO().login(uName, pWord);	//passing userId & password to LoginDAO-class

		if(ub==null) {
			HttpSession hs = req.getSession();	//Accessing existing object
			hs.setAttribute("invalidLogin", "Invalid Username or Password !!!");

		    // Redirect to login page
		    res.sendRedirect("login.jsp");
		}
		else {
			HttpSession hs = req.getSession();
			hs.setAttribute("userDetails", ub);
			//System.out.println(ub);
			
		    
		    res.sendRedirect("home.jsp");
		}


	}
}
