/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.dao;

import br.com.fatecpg.jdbc.ConnectionFactory;
import br.com.fatecpg.model.Manufacturer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author T2S-JOHNATAS
 */
public class ManufacturerDao {

    private Connection connection;

    public ManufacturerDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void insert(Manufacturer manufacturer) {
        String sql = "INSERT INTO MANUFACTURER"
                + "   (MANUFACTURER_ID, NAME, EMAIL)"
                + "   (?,?,?) ";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setInt(1, manufacturer.getId());
            stmt.setString(2, manufacturer.getEmail());
            stmt.setString(3, manufacturer.getEmail());

            ResultSet rs = stmt.executeQuery();
            rs.close();
            stmt.close();

        } catch (Exception ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public void update(Manufacturer manufacturer) {
        String sql = "UPDATE MANUFACTURER SET"
                + "          (NAME = ?, EMAIL =?)"
                + "    WHERE MANUFACTURER_ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, manufacturer.getEmail());
            stmt.setString(2, manufacturer.getEmail());
            stmt.setInt(3, manufacturer.getId());

            ResultSet rs = stmt.executeQuery();
            rs.close();
            stmt.close();

        } catch (Exception ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public ArrayList<Manufacturer> listCustomer() {
        String sql = "SELECT MANUFACTURER_ID ID"
                + "        , NAME"
                + "        , EMAIL "
                + "     FROM MANUFACTURER ";
        try {

            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            ArrayList<Manufacturer> manufacturers = new ArrayList<>();

            while (rs.next()) {
                Manufacturer manufacturer = new Manufacturer(
                        rs.getInt("ID"),
                        rs.getString("NAME"),
                        rs.getString("EMAIL"));

                manufacturers.add(manufacturer);
            }
            rs.close();
            stmt.close();
            return manufacturers;
        } catch (SQLException ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

    public void delete(int idManufacturer) {
        String sql = "DELETE MANUFACTURER"
                + "    MANUFACTURER_ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setInt(1, idManufacturer);

            ResultSet rs = stmt.executeQuery();
            rs.close();
            stmt.close();

        } catch (Exception ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

}
