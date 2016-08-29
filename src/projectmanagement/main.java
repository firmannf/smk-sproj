/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package projectmanagement;

import javax.swing.JOptionPane;

/**
 *
 * @author acer
 */
public class main {

    static String ID_Project;
    static String Name_Project;
    static FrmMain fm = new FrmMain();

    public static void setID_Project(String ID_Project) {
        main.ID_Project = ID_Project;
    }

    public static String getID_Project() {
        return ID_Project;
    }


    public static void getfrmmain() {
        fm.dispose();
    }

    public static String getName_Project() {
        return Name_Project;
    }

    public static void setName_Project(String Name_Project) {
        main.Name_Project = Name_Project;
    }

    public static void main(String[] args) {
        SplashScreen SS = new SplashScreen();
        SS.setVisible(true);
        for (int i = 0; i <= 15; i++) {
            try {
                SS.getPbar().setValue(SS.getPbar().getValue() + i);
                Thread.sleep(150);
            } catch (InterruptedException ex) {
                JOptionPane.showMessageDialog(null, "Error Load The Form");
            }
            if (i == 15) {
                SS.dispose();
                fm.setVisible(true);
            }
        }
    }
}
