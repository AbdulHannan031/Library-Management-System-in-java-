import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;

public class admindash extends JFrame{
    private JButton addLibrariansButton;
    private JButton logoutButton;
    private JButton deleteLibrariansButton;
    private JPanel main;
    admindash(Connection connection)
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

        addLibrariansButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new addlibrarian(connection);
            }
        });
        deleteLibrariansButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new deletelibrarian(connection);
            }
        });
    }
}
