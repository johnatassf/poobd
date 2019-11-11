package br.com.fatecpg.model;

public class Manufacturer {
    private Integer id;
    private String nome;
    private String email;
    private String city;
    private String state;



    public Manufacturer(Integer id, String nome, String email, String city, String state) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.city = city;
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
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
