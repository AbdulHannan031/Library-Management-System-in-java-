import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class returnbook extends JFrame {
    JPanel panel1;
    JTable table;
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
    returnbook(Connection con,String name) {
        String[] columnNames = {"ID","Email", "Bookname", "Booktitle", "issued date" };
        DefaultTableModel model = new DefaultTableModel(columnNames, 0);

        try {
            String q="SELECT * FROM issuedbooks WHERE Studentname=?";
            PreparedStatement preparedStatement=con.prepareStatement(q);
            preparedStatement.setString(1,name);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Object[] rowData = {resultSet.getInt("id"),resultSet.getString("Studentname"), resultSet.getString("Booknumber"), resultSet.getString("Booktitle"), resultSet.getString("issueddate")};
                model.addRow(rowData);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }

        Color color = new Color(0, 18, 48);
        SwingUtilities.invokeLater(() -> {
            // Create JTable and set the model
            table = new JTable(model);
            table.setBackground(color);
            table.setForeground(Color.WHITE);

            // Add MouseListener to the JTable
            table.addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    if (SwingUtilities.isRightMouseButton(e)) {
                        int row = table.rowAtPoint(e.getPoint());
                        table.setRowSelectionInterval(row, row);

                        JPopupMenu popupMenu = new JPopupMenu();
                        JMenuItem approveItem = new JMenuItem("Return Book");



                        approveItem.addActionListener(actionEvent -> {
                            int selectedRow = table.getSelectedRow();
                            int number;
                            String book=(String)table.getValueAt(selectedRow,2);
                            if (selectedRow != -1) {
                                int nameToDelete =(Integer) table.getValueAt(selectedRow, 0);
                                try {
                                     number=getCurrentQuantity(con,(String)table.getValueAt(selectedRow,2));
                                } catch (SQLException ex) {
                                    throw new RuntimeException(ex);
                                }
                                try {

                                    Statement deleteStatement = con.createStatement();
                                    String deleteQuery = "DELETE FROM issuedbooks WHERE id='" + nameToDelete + "'";
                                    int rowsDeleted = deleteStatement.executeUpdate(deleteQuery);

                                    if (rowsDeleted > 0) {
                                        // Remove the selected row from the JTable's model
                                        ((DefaultTableModel) table.getModel()).removeRow(selectedRow);
                                        JOptionPane.showMessageDialog(null,"Returned Successfully");
                                        updateQuantity(con,book,number+1);
                                    } else {
                                        System.out.println("Error deleting from database.");
                                    }

                                    deleteStatement.close();
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            }
                        });




                        popupMenu.add(approveItem);



                        popupMenu.show(table, e.getX(), e.getY());
                    }
                }
            });

            panel1 = new JPanel(new BorderLayout());
            panel1.setBackground(color);
            panel1.add(new JScrollPane(table), BorderLayout.CENTER);

            add(panel1);

            pack();
            setLocationRelativeTo(null);
            setVisible(true);
            setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

            addWindowListener(new WindowAdapter() {
                @Override
                public void windowClosed(WindowEvent e) {
                    dispose();
                }
            });
        });
    }
}
