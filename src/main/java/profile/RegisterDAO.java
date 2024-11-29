package profile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import DAO.DBConnection;

public class RegisterDAO {
	public int k = 0;
	public int insert(UserBean ub) {
		try {
			Connection con = DBConnection.get();	//accessing existing connection
			PreparedStatement ps = con.prepareStatement("insert into tms_registration values(?,?,?,?,?,?,?)");

			ps.setString(1, ub.getUname());
			ps.setString(2, ub.getEmail());
			ps.setLong(3, ub.getPhoneNumber());
			ps.setString(4, ub.getGender());

			//ps.setLocalDate(5, ub.getDob());
			LocalDate dob = ub.getDob();  // Assuming ub.getDob() returns a LocalDate
			java.sql.Date sqlDate = java.sql.Date.valueOf(dob);

			ps.setDate(5, sqlDate);
			ps.setString(6, ub.getPassword());
			ps.setString(7, ub.getUsername());

			k = ps.executeUpdate();

		}
		catch(Exception e) {
			e.printStackTrace();

		}

		return k;
	}


}
