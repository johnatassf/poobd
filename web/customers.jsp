<%@page import="br.com.fatecpg.dao.CustomerDao"%>
<%@page import="br.com.fatecpg.jdbc.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.fatecpg.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JavaDB</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <h1> Teste Connection </h1>
        <% Connection con = new ConnectionFactory().getConnection(); %>
        <h1>Conexão aberta!</h1>
           <% con.close();%>
        <h1>Clientes</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Compras</th>
            </tr>
            <%try{%>
            <% for (Customer c : new CustomerDao().listCustomer()) {%>
            <tr>
                <th><%=c.getId()%></th>
                <th><%=c.getNome()%></th>
                <th><%=c.getEmail()%></th>
                <th><a href="compras.jsp?id=<%=c.getId()%>">Compras</a></th>
            </tr>
            <%}%>
            <%}catch(Exception ex){%>
            <%=ex.getMessage()%>
            <%}%>
        </table>
    </body>
</html>
