<%@page import="br.com.fatecpg.dao.CustomerDao"%>
<%@page import="br.com.fatecpg.jdbc.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.fatecpg.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JavaDB</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    
    <style>
        body {
             font-family: 'Roboto';
       }
       </style>
       
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <header>
       
    </head>
      <br>
   <div class="jumbotron apresentacao" style="background-color:#DB3256 ">
    <h1 class="display-4" style='color: white'> <center>Clientes</center></h1>
    
   </div>
      <br>
</header>
   <div align="center">
       
        <h1><img src="value.png" style="width: 50px; height: 50px"></h1>
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
        </div>
    </body>
</html>
