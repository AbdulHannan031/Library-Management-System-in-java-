import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class deletelibrarian extends JFrame {
    JPanel panel1;
    JTable table;

    deletelibrarian(Connection con) {
        String[] columnNames = {"ID","Name", "Email", "password"};
        DefaultTableModel model = new DefaultTableModel(columnNames, 0);

        try {
            String q="SELECT * FROM librarian";
            PreparedStatement preparedStatement=con.prepareStatement(q);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Object[] rowData = {resultSet.getInt("id"),resultSet.getString("name"), resultSet.getString("email"), resultSet.getString("password")};
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
                        JMenuItem approveItem = new JMenuItem("Delete librarian");



                        approveItem.addActionListener(actionEvent -> {
                            int selectedRow = table.getSelectedRow();
                            int number;
                            String book=(String)table.getValueAt(selectedRow,2);
                            if (selectedRow != -1) {
                                int nameToDelete =(Integer) table.getValueAt(selectedRow, 0);

                                try {

                                    Statement deleteStatement = con.createStatement();
                                    String deleteQuery = "DELETE FROM librarian WHERE id='" + nameToDelete + "'";
                                    int rowsDeleted = deleteStatement.executeUpdate(deleteQuery);

                                    if (rowsDeleted > 0) {
                                        // Remove the selected row from the JTable's model
                                        ((DefaultTableModel) table.getModel()).removeRow(selectedRow);
                                        JOptionPane.showMessageDialog(null,"Deleted Successfully");

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
