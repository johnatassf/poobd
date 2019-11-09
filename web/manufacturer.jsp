<%@page import="br.com.fatecpg.dao.ManufacturerDao"%>
<%@page import="br.com.fatecpg.model.Manufacturer"%>
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
            <% for (Manufacturer m : new ManufacturerDao().listCustomer()) {%>
            <tr>
                <th><%=m.getId()%></th>
                <th><%=m.getNome()%></th>
                <th><%=m.getEmail()%></th>
            </tr>
            <%}%>
            <%}catch(Exception ex){%>
            <%=ex.getMessage()%>
            <%}%>
        </table>
    </body>
</html>
