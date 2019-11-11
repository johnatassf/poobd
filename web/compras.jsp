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
        <title>Compras - JavaDB</title>
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
        <%try {%>
        <% if (!request.getParameter("id").isEmpty()) {%>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <table border="1">
            <h1><img src="logistic.png" style="width: 50px; height: 50px"></h1>
            <tr>
                <th>Id Cliente</th>
                <th>Produto Id</th>
                <th>Descrição do produto</th>
                <th>Quantidade de itens</th>
                <th>Valor Frete</th>
                <th>Data Compra</th>
                <th>Data Envio</th>
                <th>Número da Nota</th>
                <th>Empresa Frete</th>
            </tr>
            <% ArrayList<NotaCompra> notasDecompras = new NotaCompraDao().listCustomer(id);%>
         
            <% for (NotaCompra nc : new NotaCompraDao().listCustomer(id)) {%>
            <tr>
                <th><%=nc.getIdCustomer()%></th>
                <th><%=nc.getIdProduct()%></th>
                <th><%=nc.getDescricaoProduto()%></th>
                <th><%=nc.getQuantidade()%></th>
                <th><%=nc.getEmpresaFrete()%></th>
                <th><%=nc.getCompra()%></th>
                <th><%=nc.getDataFrete()%></th>
                <th><%=nc.getOrderNumero()%></th>
                <th><%=nc.getValorFrete()%></th>
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
