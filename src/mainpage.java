

import javax.swing.*;
import java.awt.event.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class mainpage extends JFrame{
    private JTabbedPane tabbedPane1;
    private JTextField textField1;
    private JPasswordField passwordField1;
    private JComboBox comboBox1;
    private JButton loginButton;
    private JTextField textField2;
    private JTextField textField3;
    private JTextField textField4;
    private JTextField textField5;
    private JPasswordField passwordField2;
    private JPasswordField passwordField3;
    private JButton registerButton;
    private JButton closeButton;
    private JButton close;
    Connection connection;
    private boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    private boolean isUserAlreadyRegistered(String email) {




        String sql = "SELECT * FROM students WHERE  email = ?";
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

    public mainpage() {
 setUndecorated(true);
        try {
            connection=new db().getConnection();
        } catch (SQLException e) {
            System.out.println(e);
        }
        add(tabbedPane1);

        setSize(600,400);
        setVisible(true);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

       // comboBox1.addActionListener(a-> loginButton.doClick());
        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String email=textField1.getText();
                String password=passwordField1.getText();
                String Logintype=String.valueOf(comboBox1.getSelectedItem());

                if(!email.isEmpty()&&!password.isEmpty()&&!Logintype.isEmpty())
                {
                           if(isValidEmail(email))
                           {
                                if(Logintype.equals("Student"))
                                {
                                    String sql = "SELECT * FROM students WHERE email = ? AND password = ?";
                                    try {
                                        PreparedStatement preparedStatement=connection.prepareStatement(sql);
                                        preparedStatement.setString(1,email);
                                        preparedStatement.setString(2,password);
                                        try (ResultSet resultSet = preparedStatement.executeQuery()) {
                                            if(resultSet.next())
                                            {
                                                  dispose();
                                                  new studentdash(connection,email);

                                            }
                                            else {
                                                JOptionPane.showMessageDialog(null,"Wrong credientials ","Error",JOptionPane.ERROR_MESSAGE);

                                            }


                                        }
                                    } catch (SQLException ex) {
                                        throw new RuntimeException(ex);
                                    }
                                }
                                else if (Logintype.equals("Admin")) {
                                    if(email.equals("admin@gmail.com")&&password.equals("admin"))
                                    {
                                          dispose();
                                          new admindash(connection);
                                    }
                                    else
                                    {
                                        JOptionPane.showMessageDialog(null,"Wrong credientials ","Error",JOptionPane.ERROR_MESSAGE);

                                    }


                                }
                                else {
                                    String sql = "SELECT * FROM librarian WHERE email = ? AND password = ?";
                                    try {
                                        PreparedStatement preparedStatement=connection.prepareStatement(sql);
                                        preparedStatement.setString(1,email);
                                        preparedStatement.setString(2,password);
                                        try (ResultSet resultSet = preparedStatement.executeQuery()) {
                                            if(resultSet.next())
                                            {
                                                     dispose();
                                                     new librariandash(connection);
                                            }
                                            else {
                                                JOptionPane.showMessageDialog(null,"Wrong credientials ","Error",JOptionPane.ERROR_MESSAGE);

                                            }


                                        }
                                    } catch (SQLException ex) {
                                        throw new RuntimeException(ex);
                                    }

                                }

                           }
                           else {
                               JOptionPane.showMessageDialog(null,"invalid Email ","Error",JOptionPane.ERROR_MESSAGE);

                           }
                }
                else {
                    JOptionPane.showMessageDialog(null,"Fill in all fields ","Error",JOptionPane.ERROR_MESSAGE);
                }
            }
        });
        registerButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String studentname=textField2.getText();
                String studentemail=textField3.getText();
                String studentcontact=textField4.getText();
                String studentaddress=textField5.getText();
                String pass=passwordField2.getText();
                String cpass=passwordField3.getText();
                if(!studentname.isEmpty()&&!studentaddress.isEmpty()&&!studentcontact.isEmpty()&&!studentemail.isEmpty()||!pass.isEmpty()||!cpass.isEmpty())
                {
                    if(isValidEmail(studentemail)) {
                        if (!isUserAlreadyRegistered(studentemail)) {
                            if (studentcontact.length() == 11) {
                                if (pass.equals(cpass)) {
                                    if (pass.length() >= 8) {
                                        String sql = "INSERT INTO students(name,email,contact,address,password)" + "VALUES (?,?,?,?,?)";
                                        try {
                                            PreparedStatement preparedStatement = connection.prepareStatement(sql);
                                            preparedStatement.setString(1, studentname);
                                            preparedStatement.setString(2, studentemail);
                                            preparedStatement.setString(3, studentcontact);
                                            preparedStatement.setString(4, studentaddress);
                                            preparedStatement.setString(5, pass);
                                            int addedrows = preparedStatement.executeUpdate();
                                            if (addedrows > 0) {
                                                textField2.setText("");
                                                textField3.setText("");
                                                textField4.setText("");
                                                textField5.setText("");
                                                passwordField2.setText("");
                                                passwordField3.setText("");
                                                JOptionPane.showMessageDialog(null, "Registered Sucessfuly ", "Sucess", JOptionPane.PLAIN_MESSAGE);
                                            } else {
                                                JOptionPane.showMessageDialog(null, "Some issue at our end", "Error", JOptionPane.ERROR_MESSAGE);

                                            }


                                        } catch (SQLException ex) {
                                            throw new RuntimeException(ex);
                                        }


                                    } else {
                                        JOptionPane.showMessageDialog(null, "Password Length should be greator than 8", "Error", JOptionPane.ERROR_MESSAGE);

                                    }
                                } else {
                                    JOptionPane.showMessageDialog(null, "Password doesnot match", "Error", JOptionPane.ERROR_MESSAGE);

                                }
                            } else {
                                JOptionPane.showMessageDialog(null, "Invalid phone 0321-------", "Error", JOptionPane.ERROR_MESSAGE);

                            }
                        }
                        else {
                            JOptionPane.showMessageDialog(null, "User already registered ", "Error", JOptionPane.ERROR_MESSAGE);

                        }
                    }
                    else {
                        JOptionPane.showMessageDialog(null, "invalid Email ", "Error", JOptionPane.ERROR_MESSAGE);

                    }
                }

                else {
                    JOptionPane.showMessageDialog(null,"Fill in all fields ","Error",JOptionPane.ERROR_MESSAGE);

                }
            }
        });
        closeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
        close.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
    }

    public static void main(String[] args) {
        new mainpage();
    }
}
