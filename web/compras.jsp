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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JavaDB</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>


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
    </body>
</html>
