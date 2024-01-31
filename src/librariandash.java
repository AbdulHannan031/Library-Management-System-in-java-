import javax.swing.*;
import java.awt.event.ComponentAdapter;
import java.sql.Connection;

public class librariandash extends JFrame {
    private JButton addBooksButton;
    private JButton updateBooksButton;
    private JButton issuedBooksButton;
    private JButton logoutButton;
    private JPanel main;
    librariandash(Connection connection)
    {
        add(main);
        setUndecorated(true);
        setSize(600,400);
        setVisible(true);
        setLocationRelativeTo(null);
        logoutButton.addActionListener(e->{
            dispose();
            new mainpage();
        });
        addBooksButton.addActionListener(e->{
            new addbooks(connection);
        });
        updateBooksButton.addActionListener(e->{
            new UpdateBook(connection);
        });
        issuedBooksButton.addActionListener(e->{
            new issb(connection);
        });
    }
}
