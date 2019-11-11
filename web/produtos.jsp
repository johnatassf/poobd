<%@page import="br.com.fatecpg.dao.ProdutoDao"%>
<%@page import="br.com.fatecpg.model.Product"%>
<%@page import="java.util.ArrayList"%>
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
        <title>Produtos - JavaDB</title>
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
            <h1 class="display-4" style='color: white'> <center>Produtos</center></h1>

        </div>
        <br>
    </header>
    <div align="center">
        <%try {%>
        <% if (!request.getParameter("idFabrica").isEmpty()) {%>
        <% int idFabrica = Integer.parseInt(request.getParameter("idFabrica"));%>
        <table border="1">
            <tr>
               
                <th>Produto Id</th>
                <th>Fábrica Id</th>
                <th>Código do Produto</th>
                <th>Valor</th>
                <th>Quantidade</th>
                <th>Lucro</th>
                <th>Disponibilidade</th>
                <th>Descrição</th>
            </tr>
            <% ArrayList<Product> produtos = new ProdutoDao().listproduto(idFabrica);%>
         
            <% for (Product produto: produtos){%>
            <tr>
              <th><%=produto.getId()%></th>
              <th><%=produto.getIdFabrica()%></th>
              <th><%=produto.getCodigo()%></th>
              <th><%=produto.getValor()%></th>
              <th><%=produto.getQuantidade()%></th>
              <th><%=produto.getMarcacao()%></th>
              <th><%=produto.getDisponibilidade()%></th>
                <th><%=produto.getDescricao()%></th>
                
                
               
            </tr>
            <%}
            } else {%>
            <h2 style="color:red">Erro ao obter id do cliente !!</h2>
            <%}
                  {%>
            <%}
            } catch (Exception ex) {%>
            <%=ex.getMessage()%>
            <%}%>
        </table>
    </div>
</body>
</html>
