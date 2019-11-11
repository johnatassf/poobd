<%@page import="br.com.fatecpg.dao.ManufacturerDao"%>
<%@page import="br.com.fatecpg.model.Manufacturer"%>
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
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Produto</th>
            </tr>
            <%try{%>
            <% for (Manufacturer m : new ManufacturerDao().listCustomer()) {%>
            <tr>
                <th><%=m.getId()%></th>
                <th><%=m.getNome()%></th>
                <th><%=m.getEmail()%></th>
                  <th><a href="produtos.jsp?idFabrica=<%=m.getId()%>">Produto</a></th>
            </tr>
            <%}%>
            <%}catch(Exception ex){%>
            <%=ex.getMessage()%>
            <%}%>
            
        </table>
        </div>
    </body>
</html>
