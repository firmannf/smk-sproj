/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package projectmanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author acer
 */
public class DBConnection {

    public Connection openConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");//Cari Driver

            //Setting Masuk Login
            String host = "localhost";
            String port = "3306";
            String user = "root";
            String pass = "";
            String db = "Db_Project_Management";

            con = (Connection) DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + db, user, pass);
        } catch (ClassNotFoundException ex) {
            System.out.println("Class Not Found!!!");
        } catch (SQLException ex) {
            System.out.println("SQL Error!!!");
        }
        return con;
    }

    public static void main(String[] args) {
        DBConnection db = new DBConnection();
    }
}
