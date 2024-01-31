import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.time.LocalDate;

public class issuebook extends JFrame{
    private JTextField textField1;
    private JComboBox comboBox1;
    private JButton issueButton;
    private JButton cancelButton;
    private JPanel panel1;
    private JComboBox comboBox2;

    String getname(String email, Connection connection) {
        String name = null;
        String query = "SELECT name FROM students WHERE email=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();

            // Check if the result set has any rows before trying to retrieve data
            if (resultSet.next()) {
                name = resultSet.getString("name");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return name;
    }
    private int getCurrentQuantity(Connection connection, String bookNumber) throws SQLException {
        String selectSql = "SELECT Quantity FROM books WHERE Booknumber = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(selectSql)) {
            preparedStatement.setString(1, bookNumber);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("Quantity");
            }
        }

        return -1;
    }
    private void updateQuantity(Connection connection, String bookNumber, int newQuantity) throws SQLException {
        String updateSql = "UPDATE books SET Quantity = ? WHERE Booknumber = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(updateSql)) {
            preparedStatement.setInt(1, newQuantity);
            preparedStatement.setString(2, bookNumber);

            // Execute the update statement
            int rowsAffected = preparedStatement.executeUpdate();

            // Check the number of rows affected
            if (rowsAffected > 0) {
                System.out.println("Update successful!");
            } else {
                System.out.println("No rows were updated. Check your condition.");
            }
        }
    }
    private void populateComboBox1(Connection connection) {
        // Your database connection logic goes here
        // Use a try-with-resources statement to automatically close the resources
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT  Booknumber FROM books");
            ResultSet resultSet = statement.executeQuery();

            // Clear existing items in comboBox1
            comboBox1.removeAllItems();

            // Populate comboBox1 with book numbers
            while (resultSet.next()) {
                comboBox1.addItem(resultSet.getString("bookNumber"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    private void populateComboBox2(String selectedBookNumber ,Connection connection) {

        try {


             PreparedStatement statement = connection.prepareStatement("SELECT Title FROM books WHERE Booknumber = ?");


            // Set the bookNumber parameter in the query
            statement.setString(1, selectedBookNumber);

            // Clear existing items in comboBox2
            comboBox2.removeAllItems();

            // Populate comboBox2 with book titles
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                comboBox2.addItem(resultSet.getString("Title"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        issuebook(String email, Connection connection)
    {

        String name=getname(email,connection);
        textField1.setText(name);
        populateComboBox1(connection);

        add(panel1);
        setUndecorated(true);
        setSize(600,400);
        setVisible(true);
        setLocationRelativeTo(null);
        comboBox1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                populateComboBox2(String.valueOf(comboBox1.getSelectedItem()),connection);
            }
        });
        cancelButton.addActionListener(e->{
            dispose();
        });
        issueButton.addActionListener(e->{
                  if(!String.valueOf(comboBox1.getSelectedItem()).isEmpty())
                  {
                      String query="INSERT INTO issuedbooks(Studentname,Booknumber,Booktitle,issueddate)"+"VALUES(?,?,?,?)";
                                try
                                {
                                    String number=String.valueOf(comboBox1.getSelectedItem());
                                    LocalDate currentDate = LocalDate.now();


                                    PreparedStatement preparedStatement=connection.prepareStatement(query);
                                    preparedStatement.setString(1,email);
                                    preparedStatement.setString(2,number);
                                    preparedStatement.setString(3,String.valueOf(comboBox2.getSelectedItem()));
                                    preparedStatement.setDate(4, Date.valueOf(currentDate));

                                    int result =preparedStatement.executeUpdate();
                                    if(result>=1)
                                    {
                                        int currentQuantity = getCurrentQuantity(connection, number);

                                        // Subtract 1 from the current quantity
                                        int newQuantity = currentQuantity - 1;

                                        // Update the "books" table with the new quantity
                                        updateQuantity(connection, number, newQuantity);
                                        JOptionPane.showMessageDialog(null,"Issued Successfully");
                                        dispose();


                                    }
                                  else{
                                        JOptionPane.showMessageDialog(null,"Some issues at our end");

                                    }
                                } catch (SQLException ex) {
                                    throw new RuntimeException(ex);
                                }
                  }
                  else{
                      JOptionPane.showMessageDialog(null,"Please select a book first ");
                  }
        });
    }
}
