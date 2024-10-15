package DaoConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConnect {
    //class ni de text co ket noi dc hay ko
    public static void main(String[] args) {
        String url="jdbc:sqlserver://LAPTOP-0C73HLTK; databaseName=Account";
        String user="sa";
        String pass="123";
        try {
            Connection connection= DriverManager.getConnection(url,user,pass);
            System.out.println("connectok");
        }catch (SQLException e){
            System.out.println("error");
            e.printStackTrace();
        };

    }
}