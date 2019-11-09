/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.dao;

import br.com.fatecpg.jdbc.ConnectionFactory;
import br.com.fatecpg.model.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author T2S-JOHNATAS
 */
public class CustomerDao {

    private Connection connection;

    public CustomerDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public ArrayList<Customer> listCustomer() {
        String sql = "SELECT CUSTOMER_ID ID"
                + "        , NAME"
                + "        , EMAIL "
                + "     FROM CUSTOMER ";
        try {

            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            ArrayList<Customer> customers = new ArrayList<>();

            while (rs.next()) {
                Customer customer = new Customer(
                        rs.getInt("ID"),
                        rs.getString("NAME"),
                        rs.getString("EMAIL"));

                customers.add(customer);
            }
            rs.close();
            stmt.close();
            return customers;
        } catch (SQLException ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }
}
