<%-- 
    Document   : pagina1
    Created on : 25/08/2017, 09:25:51
    Author     : 31661459
--%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<% String nome_aluno = request.getParameter("nome_aluno");
   String cod_aluno = request.getParameter("cod_aluno");
    %>
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
            <input type="hidden" name="opcao" value="alterar">
            Digite código do aluno a ser alterado: <input type="text" name="cod_aluno2" id="cod_aluno2"><br>
            Digite nome novo do aluno: <input type="text" name="nome_aluno" id="nome_aluno"><br>
            Digite código novo do aluno: <input type="text" name="cod_aluno" id="cod_aluno">
        <input type="submit" value="Alterar">
        </form>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
