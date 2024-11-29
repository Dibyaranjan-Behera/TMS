package profile;

import java.io.IOException;
import java.util.ArrayList;

import com.google.gson.Gson; // Import Gson for JSON conversion

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/details")
public class ViewProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        if (session != null) {
            // Retrieve user details from the database
            ArrayList<UserBean> userDetails = new ViewProfileDetailsDAO().retrieve();
            session.setAttribute("userDetails", userDetails);
            System.out.println("User details: " + userDetails);

            // Convert the list of user details to JSON
            Gson gson = new Gson();
            String jsonResponse = gson.toJson(userDetails);
            System.out.println("JSON response: " + jsonResponse);

            // Set response type to JSON
            res.setContentType("application/json");
            res.setCharacterEncoding("UTF-8");
            res.getWriter().write(jsonResponse); // Send JSON response
        }

    }
}
