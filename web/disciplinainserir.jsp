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
            <input type="hidden" name="opcao" value="inserir">
            <input type="hidden" name="tipo" value="disciplina">
            Digite nome da disciplina: <input type="text" name="nome_disciplina" id="nome_disciplina"><br>
            Digite código da disciplina: <input type="text" name="cod_disciplina" id="cod_disciplina"><br>
            Digite código do curso a que pertence: <input type="text" name="cod_curso" id="cod_curso">
        <input type="submit" value="Inserir">
        </form>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
