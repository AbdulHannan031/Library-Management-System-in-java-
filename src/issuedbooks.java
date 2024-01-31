import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class issuedbooks extends JFrame {
    JPanel panel1;
    JTable table;

    issuedbooks(Connection con,String name) {
        String[] columnNames = {"ID","Email", "Bookname", "Booktitle", "issued date" };
        DefaultTableModel model = new DefaultTableModel(columnNames, 0);
        System.out.println(name);
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
