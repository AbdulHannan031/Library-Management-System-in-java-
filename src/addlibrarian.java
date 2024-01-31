import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class addlibrarian extends JFrame{
    private JTextField textField1;
    private JTextField textField2;
    private JPasswordField passwordField1;
    private JButton addLibrarianButton;
    private JButton cancelButton;
    private JPanel main;
    private boolean isUserAlreadyRegistered(String email ,Connection connection) {




        String sql = "SELECT * FROM librarian WHERE  email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, email);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                return resultSet.next();
            }

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    addlibrarian(Connection connection)
    {
        add(main);
        setUndecorated(true);
        setSize(600,400);
        setLocationRelativeTo(null);
        setVisible(true);
        cancelButton.addActionListener(e->{
            dispose();
        });
        addLibrarianButton.addActionListener(e->{
            String name=textField1.getText();
            String email=textField2.getText();
            String pas=passwordField1.getText();
            if(!name.isEmpty()&&!email.isEmpty()&&!pas.isEmpty())
            {
                if(!isUserAlreadyRegistered(email,connection))
                {
                    if(pas.length()>=8)
                    {
                         String q="INSERT INTO librarian(name,email,password)"+"VALUES(?,?,?)";
                         try {
                             PreparedStatement preparedStatement=connection.prepareStatement(q);
                             preparedStatement.setString(1,name);
                             preparedStatement.setString(2,email);
                             preparedStatement.setString(3,pas);
                             int result=preparedStatement.executeUpdate();
                             if(result>=1)
                             {
                                 JOptionPane.showMessageDialog(null,"Added Successfully");
                                 dispose();
                             }
                             else {
                                 JOptionPane.showMessageDialog(null,"Something went wrong","Error",JOptionPane.ERROR_MESSAGE);

                             }
                         } catch (SQLException ex) {
                             throw new RuntimeException(ex);
                         }
                    }
                    else {
                        JOptionPane.showMessageDialog(null,"Password length must be greator than 8","Error",JOptionPane.ERROR_MESSAGE);

                    }
                }
                else{
                    JOptionPane.showMessageDialog(null,"Librarian already registered ","Error",JOptionPane.ERROR_MESSAGE);

                }
            }
            else {
                JOptionPane.showMessageDialog(null,"Fill all fields","Error",JOptionPane.ERROR_MESSAGE);

            }

        });
    }
}
