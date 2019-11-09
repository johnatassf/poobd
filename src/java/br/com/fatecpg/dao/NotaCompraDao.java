/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.dao;

import br.com.fatecpg.jdbc.ConnectionFactory;
import br.com.fatecpg.model.Manufacturer;
import br.com.fatecpg.model.NotaCompra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author T2S-JOHNATAS
 */
public class NotaCompraDao {

    private Connection connection;

    public NotaCompraDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public ArrayList<NotaCompra> listCustomer(int pIdCustomer) {
        String sql = "select ORDER_NUM       ORDERNUMERO " +
                     "     , CUSTOMER_ID     IDCUSTOMER" +
                     "     , PRODUCT_ID      IDPRODUCT" +
                     "     , QUANTITY        QUANTIDADE" +
                     "     , SHIPPING_COST   VALORFRETE" +
                     "     , SALES_DATE      DATACOMPRA" +
                     "     , SHIPPING_DATE   DATAENVIO" +
                     "     , FREIGHT_COMPANY EMPRESAFRETE" +
                     "  FROM purchase_order " +
                     " WHERE CUSTOMER_ID = ?";
        try {

            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, pIdCustomer);
            
            ResultSet rs = stmt.executeQuery();
            ArrayList<NotaCompra> notasCompras = new ArrayList<>();

            while (rs.next()) {

                int orderNumero = rs.getInt("ORDERNUMERO");
                int idCustomer = rs.getInt("IDCUSTOMER");
                int idProduct = rs.getInt("IDPRODUCT");
                int quantidade = rs.getInt("QUANTIDADE");
                double valorFrete = rs.getDouble("VALORFRETE");
                Date compra = rs.getDate("DATACOMPRA");
                Date dataFrete = rs.getDate("DATAENVIO");
                String empresaFrete = rs.getString("EMPRESAFRETE");

                NotaCompra notaCompra = new NotaCompra(
                        orderNumero,
                        idCustomer,
                        idProduct,
                        quantidade,
                        valorFrete,
                        compra,
                        dataFrete,
                        empresaFrete);
                
                notasCompras.add(notaCompra);
            }
            rs.close();
            stmt.close();
            return notasCompras;
        } catch (SQLException ex) {
            throw new RuntimeException(ex.getMessage());
        }
    }

}
