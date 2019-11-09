package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class Manufacturer {
    private Integer id;
    private String nome;
    private String email;

    public Manufacturer(Integer id, String nome, String email) {
        this.id = id;
        this.nome = nome;
        this.email = email;
    }
    
    public static ArrayList<Manufacturer> getFabricante() throws ClassNotFoundException, SQLException{
        ArrayList<Manufacturer> fabricantes = new ArrayList<>();
        
        //Montando conexão com o banco
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        String user = "app";
        String pass = "app";
        
        //Conectando com o banco
        Connection con = DriverManager.getConnection(url, user, pass);
        
        //Criando um statement
        Statement stmt = con.createStatement();
        
        //Executando um comndo SQL
        String sql = "SELECT MANUFACTURER_ID, NAME, EMAIL FROM MANUFACTURER";
        ResultSet rs = stmt.executeQuery(sql);
        
        //Varrendo todos os resulstados retornados dentro do ResultSet
        while(rs.next()){
            //Recuperando as informações que retornaram do banco de dados
            Integer id = rs.getInt("MANUFACTURER_ID");
            String nome = rs.getString("NAME");
            String email = rs.getString("EMAIL");
            
            //Criando um objeto da classe Customer e adicionando na lista
            Manufacturer m = new Manufacturer(id, nome, email);
            
            fabricantes.add(m);
        }
        
        return fabricantes;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}