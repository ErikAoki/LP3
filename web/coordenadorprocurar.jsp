<%-- 
    Document   : pagina1
    Created on : 25/08/2017, 09:25:51
    Author     : 31661459
--%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Resultado">
            <input type="hidden" name="opcao" value="procurar">
            <input type="hidden" name="tipo" value="coordenador">
            Digite código do coordenador a ser procurado: <input type="text" name="cod_coordenador" id="cod_coordenador">
        <input type="submit" value="Procurar">
        </form>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
