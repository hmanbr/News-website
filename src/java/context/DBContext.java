package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    
    public Connection getConnection() throws ClassNotFoundException, SQLException {
        //String url = "jdbc:sqlserver://localhost\\DESKTOP-U66ON74\\SQLEXPRESS:1433;databaseName=NewsWebsite";
        String url ="jdbc:sqlserver://"+serverName+":"+portNumber+"\\"+instance+";databaseName="+dbName;
        if(instance == null || instance.trim().isEmpty())
           url = "jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+dbName;

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }
    
    private final String serverName = "localhost\\DESKTOP-U66ON74\\SQLEXPRESS";
    private final String dbName = "NewsWebsite";
    private final String portNumber = "1433";
    private final String instance = "";
    private final String userID = "abc";
    private final String password = "123";
    
    
}