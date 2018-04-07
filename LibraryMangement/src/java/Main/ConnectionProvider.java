/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author mohnish
 */
public class ConnectionProvider {

    final static String user = "hr";
    final static String password = "hr";
    final static String url = "jdbc:derby://localhost:1527/LibraryDB";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("org.apache.derby.jdbc.ClientDriver");

        Connection con = DriverManager.getConnection(url, user, password);

        return con;
    }

}
