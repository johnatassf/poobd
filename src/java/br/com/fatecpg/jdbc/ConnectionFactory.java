/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author T2S-JOHNATAS
 */
public class ConnectionFactory {

    public static class teste {
        //lass.forName("org.apache.derby.jdbc.ClientDriver");
    }

    private String url = "jdbc:derby://localhost:1527/sample";
    private String user = "app";
    private String pass = "app";

    public Connection getConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            return DriverManager.getConnection(url, user, pass);
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        } catch (ClassNotFoundException ex) {
           throw new RuntimeException(ex);
        }
    }
    

}
