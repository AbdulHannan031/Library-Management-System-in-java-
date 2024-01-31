import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class db {
    String url="jdbc:mysql://localhost:3306/admin2";
    String username="root";
    String password="";
    Connection connection;
    Connection getConnection() throws SQLException {
        if(connection==null)
        {
            connection=DriverManager.getConnection(url,username,password);
            return connection;
        }
        else
        {
            return connection;
        }
    }
}
