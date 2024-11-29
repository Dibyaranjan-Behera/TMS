package profile;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LogInServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Retrieve username and password from the request
        String uName = req.getParameter("userName");
        String pWord = req.getParameter("password");

        // Authenticate user using LogInDAO
        UserBean ub = new LogInDAO().login(uName, pWord);

        // Access existing session or create a new one
        HttpSession session = req.getSession();

        if (ub == null) {
            // If login fails, set error message in session
            session.setAttribute("invalidLogin", "Invalid Username or Password!");

            // Redirect to login page
            res.sendRedirect(req.getContextPath() + "/login.jsp");
        } else {
            // If login succeeds, store user details in session
        	 session.setAttribute("successLogin", "success");
             session.setAttribute("userDetails", ub);

            // Redirect to home page
            res.sendRedirect(req.getContextPath() + "/home.jsp");
        }
    }
}
