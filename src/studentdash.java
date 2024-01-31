import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;

public class studentdash extends  JFrame {

    private JPanel panel1;
    private JButton issueBookButton;
    private JButton returnBookButton;
    private JButton showIssuedBooksButton;
    private JButton logOutButton;
     studentdash(Connection connection,String email)
     {
         add(panel1);
         setUndecorated(true);
         setSize(600,400);
         setVisible(true);
         setLocationRelativeTo(null);
         setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
         issueBookButton.addActionListener(new ActionListener() {
             @Override
             public void actionPerformed(ActionEvent e) {
                 new issuebook(email,connection);
             }
         });
         logOutButton.addActionListener(e->{
             dispose();
             new mainpage();
         });
         returnBookButton.addActionListener(new ActionListener() {
             @Override
             public void actionPerformed(ActionEvent e) {
                 new returnbook(connection,email);
             }
         });
         showIssuedBooksButton.addActionListener(new ActionListener() {
             @Override
             public void actionPerformed(ActionEvent e) {
                 new issuedbooks(connection,email);
             }
         });
     }

}
