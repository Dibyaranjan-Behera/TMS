package profile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import DAO.DBConnection;

public class LogInDAO {

	public UserBean ub = null;
	public UserBean login(String uName, String pWord) {

		try {
			Connection con = DBConnection.get();
			PreparedStatement ps = con.prepareStatement("select * from tms_registration where username=? AND password=?");

			ps.setString(1, uName);
			ps.setString(2, pWord);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				ub = new UserBean();
				ub.setUname(rs.getString("NAME"));
				ub.setEmail(rs.getString("EMAIL"));
				ub.setPhoneNumber(rs.getLong("PHONENUMBER"));
				ub.setGender(rs.getString("GENDER"));
				//ub.setDob(LocalDate.parse(rs.getString(5)));
				


			}
			else {
				System.out.println("User not found");
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return ub;
	}
}
