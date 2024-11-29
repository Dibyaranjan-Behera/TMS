package profile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DAO.DBConnection;

public class ViewProfileDetailsDAO {
    // List to store user profiles
    public ArrayList<UserBean> al = new ArrayList<>();

    // Method to retrieve user profiles
    public ArrayList<UserBean> retrieve() {
        try (Connection con = DBConnection.get();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM tms_registration where email = 'anb08@gmail.com'");
             ResultSet rs = ps.executeQuery()) {

            // Iterate over each row in the ResultSet
            while (rs.next()) {
                UserBean ub = new UserBean();
                ub.setUname(rs.getString(1)); // Assuming first column is 'uname'
                ub.setEmail(rs.getString(2)); // Assuming second column is 'email'
                ub.setPhoneNumber(rs.getLong(3)); // Assuming third column is 'phoneNumber'
                ub.setGender(rs.getString(4)); // Assuming fourth column is 'gender'

//                // Handle date conversion (assuming fifth column is 'dob')
//                try {
//                    ub.setDob(rs.getObject(5, LocalDate.class)); // Use JDBC 4.2+ for LocalDate
//                } catch (Exception e) {
//                    System.err.println("Error parsing date for user: " + rs.getString(1));
//                }

                // Add the user to the list
                al.add(ub);
            }
        } catch (Exception e) {
            e.printStackTrace(); // Print stack trace for debugging
        }

        return al;
    }
}
