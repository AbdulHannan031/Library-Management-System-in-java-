import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.Vector;
import javax.swing.table.DefaultTableModel;

class UpdateBook extends JFrame {
    private JTextField bookNumberField, titleField, authorField, quantityField;
    private JButton searchUpdateButton, refreshButton;
    private JTable table;
    private DefaultTableModel tableModel;

    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/admin";


    UpdateBook( Connection connection)
    {

        setTitle("Update Book ");
        setExtendedState(JFrame.MAXIMIZED_BOTH);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        try {
            addComponents(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        setVisible(true);
        setLocationRelativeTo(null);
    }

    private void addComponents(Connection connection) throws SQLException {
        // Initialize components
        bookNumberField = new JTextField(10);
        titleField = new JTextField(20);
        authorField = new JTextField(20);
        quantityField = new JTextField(5);

        searchUpdateButton = new JButton("Search");
        searchUpdateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                searchOrUpdateBook(connection);
            }
        });

        refreshButton = new JButton("Refresh");
        refreshButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                refreshTable(connection);
            }
        });

        tableModel = new DefaultTableModel();
        table = new JTable(tableModel);

        // Set up the table columns
        tableModel.addColumn("Book Number");
        tableModel.addColumn("Title");
        tableModel.addColumn("Author");
        tableModel.addColumn("Quantity");
refreshTable(connection);
        // Set up the layout
        JPanel panel = new JPanel();
        panel.setLayout(new FlowLayout());
        panel.add(new JLabel("Book Number:"));
        panel.add(bookNumberField);
        panel.add(new JLabel("Title:"));
        panel.add(titleField);
        panel.add(new JLabel("Author:"));
        panel.add(authorField);
        panel.add(new JLabel("Quantity:"));
        panel.add(quantityField);
        panel.add(searchUpdateButton);
        panel.add(refreshButton);
        JButton update=new JButton("update");
        update.addActionListener(e->{
            updateBook(connection);
        });
        panel.add(update);

        JScrollPane scrollPane = new JScrollPane(table);

        Container container = getContentPane();
        container.setLayout(new BorderLayout());
        container.add(panel, BorderLayout.NORTH);
        container.add(scrollPane, BorderLayout.CENTER);
    }

    private int selectedRowIndex = -1;  // Keep track of the selected row index
    private int findRowIndex(ResultSet resultSet) throws SQLException {
        int rowCount = tableModel.getRowCount();
        for (int i = 0; i < rowCount; i++) {
            if (resultSet.getInt("BookNumber") == (int) tableModel.getValueAt(i, 0)) {
                return i;
            }
        }
        return -1; // Return -1 if not found
    }
    private void searchOrUpdateBook(Connection connection) {
        String bookNumber = bookNumberField.getText();
        String title = titleField.getText();
        String author = authorField.getText();

        if (!bookNumber.isEmpty() || !title.isEmpty() || !author.isEmpty()) {
            try {
                Statement statement = connection.createStatement();

                // Modify the SQL query based on the search criteria
                String selectQuery = "SELECT * FROM books WHERE BookNumber = ? OR Title = ? OR Author = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
                    preparedStatement.setString(1, bookNumber);
                    preparedStatement.setString(2, title);
                    preparedStatement.setString(3, author);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                            // Book found, display information in input fields for updating
                            bookNumberField.setText(resultSet.getString("BookNumber"));
                            titleField.setText(resultSet.getString("Title"));
                            authorField.setText(resultSet.getString("Author"));
                            quantityField.setText(Integer.toString(resultSet.getInt("Quantity")));


                            int rowIndex = findRowIndex(resultSet);

                            // Highlight the selected row
                            table.setRowSelectionInterval(rowIndex, rowIndex);

                            // Scroll to the selected row
                            table.scrollRectToVisible(table.getCellRect(rowIndex, 0, true));


                        } else {
                            // Book not found, inform the user
                            JOptionPane.showMessageDialog(this, "Book not found", "Information", JOptionPane.INFORMATION_MESSAGE);
                            selectedRowIndex = -1;  // Reset the selected row index
                        }
                    }
                }

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else {
            JOptionPane.showMessageDialog(this, "Provide at least one search criteria", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }


    private void updateBook(Connection connection) {
        String bookNumber = bookNumberField.getText();
        String title = titleField.getText();
        String author = authorField.getText();
        String quantity = quantityField.getText();

        if (!bookNumber.isEmpty() && !title.isEmpty() && !author.isEmpty() && !quantity.isEmpty()) {
            try{
                 Statement statement = connection.createStatement();

                String updateQuery = "UPDATE books SET Title = ?, Author = ?, Quantity = ? WHERE BookNumber = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
                    preparedStatement.setString(1, title);
                    preparedStatement.setString(2, author);
                    preparedStatement.setInt(3, Integer.parseInt(quantity));
                    preparedStatement.setString(4, bookNumber);
                    preparedStatement.executeUpdate();
                }


                refreshTable(connection);

                // Clear input fields
                bookNumberField.setText("");
                titleField.setText("");
                authorField.setText("");
                quantityField.setText("");



            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } else {
            JOptionPane.showMessageDialog(this, "All fields must be filled", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void refreshTable(Connection connection) {
        tableModel.setRowCount(0);

        try {
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM books");

            while (resultSet.next()) {
                Vector<Object> row = new Vector<>();
                row.add(resultSet.getInt("BookNumber"));
                row.add(resultSet.getString("Title"));
                row.add(resultSet.getString("Author"));
                row.add(resultSet.getInt("Quantity"));
                tableModel.addRow(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
