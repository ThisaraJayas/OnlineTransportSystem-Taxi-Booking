package payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnect;

public class PaymentDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	    // Retrieve All Payments
	    public static List<Payment> getAllPayments() {
	        List<Payment> payments = new ArrayList<>();

	        try {
	            con = DBConnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "SELECT * FROM payment";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int pid = rs.getInt(1);
	                String method = rs.getString(2);
	                String name = rs.getString(3);
	                String cardnumber = rs.getString(4);
	                String exp = rs.getString(5);
	                int cvc = rs.getInt(6);

	                Payment payment = new Payment(pid, method, name, cardnumber, exp, cvc);
	                payments.add(payment);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	        }

	        return payments;
	    }

	
	    //Insert Data
		public static boolean addPayment(String method, String name, String cardno, String exp, int cvc) {
			
			boolean isSuccess = false;

					
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into payment values ('"+method+"','"+name+"','"+cardno+"','"+exp+"','"+cvc+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch(Exception e){
				e.printStackTrace();			
			}

			return isSuccess;
		}
		
		//Validate
		public static List<Payment> Validate(){
			
			ArrayList<Payment> pay = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from payment";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int pid = rs.getInt(1);
					String method = rs.getString(2);
					String name = rs.getString(3);
					String cardnumber = rs.getString(4);
					String exp = rs.getString(5);
					int cvc = rs.getInt(6);							
					
					Payment c = new Payment(pid, method, name, cardnumber, exp, cvc);
					pay.add(c);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return pay;
		}
		
		
		//Update
		public static boolean updatePayment(int id, String method, String name, String cardno, String exp, int cvc){
			boolean isSuccess = false;
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update payment set method = '"+method+"', name ='"+name+"', cardnumber = '"+cardno+"', exp = '"+exp+"', cvc ='"+cvc+"'" + " where id = '"+id+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch(Exception e){
				e.printStackTrace();			
			}
			
			return isSuccess;
		}
		
		//Delete
		public static boolean deletePayment(String id) {
			boolean isSuccess = false;
			int convertedid = Integer.parseInt(id);
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from payment where id = '"+convertedid+"'";
				int r = stmt.executeUpdate(sql);
				
				if( r > 0 ) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch(Exception e){
				e.printStackTrace();			
			}
			
			return isSuccess;
		}
}