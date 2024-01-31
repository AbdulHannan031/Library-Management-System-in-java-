import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class addbooks extends JFrame {
    private JPanel main;
    private JTextField textField1;
    private JTextField textField2;
    private JTextField textField3;
    private JTextField textField4;
    private JButton addButton;
    private JButton cancelButton;

    addbooks(Connection connection)
    {
        add(main);
        setUndecorated(true);
        setSize(600,400);
        setLocationRelativeTo(null);
        setVisible(true);
        cancelButton.addActionListener(e->{
            dispose();
        });
        addButton.addActionListener(e->{
            String bookn=textField1.getText();
            String bookt=textField2.getText();
            String bookaut=textField3.getText();
            int struc=Integer.valueOf(textField4.getText());
            if(bookn.isEmpty()||bookt.isEmpty()||bookaut.isEmpty()||textField4.getText().isEmpty())
            {
                JOptionPane.showMessageDialog(null,"Please fill all fields ");
            }
            else{
                String q="INSERT INTO books(Booknumber,Title,Author,Quantity)"+"VALUES(?,?,?,?)";
                try {
                    PreparedStatement preparedStatement=connection.prepareStatement(q);
                    preparedStatement.setString(1,bookn);
                    preparedStatement.setString(2,bookt);
                    preparedStatement.setString(3,bookaut);
                    preparedStatement.setInt(4,struc);
                    int result=preparedStatement.executeUpdate();
                    if(result>=1)
                    {
                        JOptionPane.showMessageDialog(null,"Book added Successfully ");
                    }
                    else{
                        JOptionPane.showMessageDialog(null,"Some problem occured ","error",JOptionPane.ERROR_MESSAGE);
                    }
                } catch (SQLException ex) {
                    throw new RuntimeException(ex);
                }
            }
        });

    }
}
