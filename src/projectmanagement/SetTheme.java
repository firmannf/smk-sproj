/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package projectmanagement;

import javax.swing.UIManager;

/**
 *
 * @author acer
 */
public class SetTheme {
    public SetTheme() {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            System.out.println("Cannot Load UI");     
        }
    }
}
