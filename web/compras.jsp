<%@page import="br.com.fatecpg.dao.NotaCompraDao"%>
<%@page import="br.com.fatecpg.model.NotaCompra"%>
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
    <h1 class="display-4" style='color: white'> <center>Compras</center></h1>
    
   </div>
      <br>
</header>
   <div align="center">
        <h1>Nota de Compra</h1>

        <table border="1">
            <tr>
                <th>Empresa Frete</th>
                <th>Produto Id</th>
            </tr>
            <%try {%>
            <% if (request.getParameter("id") != null) {%>
            <% int id = Integer.parseInt(request.getParameter("id"));%>
           
            <% for (NotaCompra nc : new NotaCompraDao().listCustomer(id)) { //receber este valor por parametro pela lista de cliente%>
                <tr>
                    <th><%=nc.getEmpresaFrete()%></th>
                    <th><%=nc.getIdProduct()%></th>
                </tr>
            <%}  }else{%>
            <h2>Erro ao obter parametro</h2>
              <%}{%>
            <%} }catch (Exception ex) {%>
            <%=ex.getMessage()%>
            <%}%>
        </table>
        </div>
    </body>
</html>
