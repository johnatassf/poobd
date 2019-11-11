<%@page import="java.util.ArrayList"%>
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
       
    
      <br>
   <div class="jumbotron apresentacao" style="background-color:#DB3256 ">
    <h1 class="display-4" style='color: white'> <center>Fabricantes</center></h1>
    
   </div>
      <br>
</header>
   <div align="center">
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>City</th>
                <th>State</th>
            </tr>
            <%try{%>
            <%ArrayList<Manufacturer>fabricas=new ManufacturerDao().listarFabricas(); %>
            <% for (Manufacturer fabrica : fabricas) {%>
            <tr>
                <th><%=fabrica.getId()%></th>
                <th><%=fabrica.getNome()%></th>
                <th><%=fabrica.getEmail()%></th>
                <th><%=fabrica.getCity()%></th>
                <th><%=fabrica.getState()%></th>
                
            </tr>
            <%}%>
            <%}catch(Exception ex){%>
            <%=ex.getMessage()%>
            <%}%>
        </table>
        </div>
    </body>
</html>
