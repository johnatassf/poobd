/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.model;

import java.util.Date;

/**
 *
 * @author T2S-JOHNATAS
 */
public class NotaCompra {
    private int orderNumero;
    private int idCustomer;
    private int idProduct;
    private int quantidade;
    private double valorFrete;
    private Date compra;
    private Date dataFrete;
    private String empresaFrete;
    private String descricaoProduto;

    public NotaCompra(int orderNumero, int idCustomer, int idProduct, int quantidade, double valorFrete, Date compra, Date dataFrete, String empresaFrete, String descricaoProduto) {
        this.orderNumero = orderNumero;
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
        this.quantidade = quantidade;
        this.valorFrete = valorFrete;
        this.compra = compra;
        this.dataFrete = dataFrete;
        this.empresaFrete = empresaFrete;
        this.descricaoProduto = descricaoProduto;
    }

    public int getOrderNumero() {
        return orderNumero;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public double getValorFrete() {
        return valorFrete;
    }

    public Date getCompra() {
        return compra;
    }

    public Date getDataFrete() {
        return dataFrete;
    }

    public String getEmpresaFrete() {
        return empresaFrete;
    }

    public String getDescricaoProduto() {
        return descricaoProduto;
    }

    
}
