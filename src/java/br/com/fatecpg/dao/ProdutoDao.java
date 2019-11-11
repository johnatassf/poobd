/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.dao;

import br.com.fatecpg.jdbc.ConnectionFactory;
import br.com.fatecpg.model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author Alan
 */
public class ProdutoDao {
    
    private Connection connection;
    
    public ProdutoDao () {
        this.connection = new ConnectionFactory().getConnection();
    }
    
    public ArrayList<Product> listproduto (int IdFabrica){
    
    String sql= "   SELECT PRODUCT_ID ," +
                    " MANUFACTURER_ID," +
                    " PRODUCT_CODE," +
                    " PURCHASE_COST," +
                    " QUANTITY_ON_HAND," +
                    " MARKUP," +
                    " AVAILABLE," +
                    " DESCRIPTION" +
                    " FROM  PRODUCT WHERE MANUFACTURER_ID = ?";
    
            try {
                PreparedStatement stmt = connection.prepareStatement(sql);
                stmt.setInt(1,IdFabrica);
                
                ResultSet rs = stmt.executeQuery();
                
                ArrayList<Product> products = new ArrayList<>();
                
                while (rs.next()){
                    
                    int produtoId = rs.getInt("PRODUCT_ID");
                    int manufacturer = rs.getInt("MANUFACTURER_ID");
                    String productCode = rs.getString("PRODUCT_CODE");
                    double purchaseCost = rs.getDouble("PURCHASE_COST");
                    int quantityOn = rs.getInt("QUANTITY_ON_HAND");
                    double markup = rs.getDouble("MARKUP");
                    String available = rs.getString("AVAILABLE");
                    String description = rs.getString("DESCRIPTION");
                    
                    
                    Product produto = new Product(produtoId, 
                            manufacturer, 
                            productCode,
                            purchaseCost,
                            quantityOn,
                            markup,
                            available,
                            description);
                    
                    products.add(produto);
                    
                    
                }
                
                return products;
                
            } catch (SQLException ex) {
                throw new RuntimeException(ex.getMessage());
            }
}
    
}


