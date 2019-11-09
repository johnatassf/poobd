/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.model;

/**
 *
 * @author T2S-JOHNATAS
 */
public class Product {
   private int id;
   private int idFabrica;
   private String codigo;
   private double valor;
   private int quantidade;
   private String descricao;

    
   public int getId() {
        return id;
    }
   
    public int getIdFabrica() {
        return idFabrica;
    }
    
    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
   
   
   
   
}
