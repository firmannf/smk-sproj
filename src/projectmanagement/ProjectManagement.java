/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package projectmanagement;

import java.text.SimpleDateFormat;

/**
 *
 * @author acer
 */
public class ProjectManagement {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DBConnection db = new DBConnection();
        db.openConnection();
    }
}
