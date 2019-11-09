<%-- 
    Document   : customers
    Created on : 04/11/2019, 21:08:07
    Author     : Rafael Teixeira Miguel
--%>

<%@page import="br.com.fatecpg.db.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JavaDB</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <h1>Clientes</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
            </tr>
            <%try{%>
            <% for (Customer c : Customer.getClientes()) {%>
            <tr>
                <th><%=c.getId()%></th>
                <th><%=c.getNome()%></th>
                <th><%=c.getEmail()%></th>
            </tr>
            <%}%>
            <%}catch(Exception ex){%>
            <%=ex.getMessage()%>
            <%}%>
        </table>
    </body>
</html>
