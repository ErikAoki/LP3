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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" 
              integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Resultado">
            <input type="hidden" name="opcao" value="alterar">
            <input type="hidden" name="tipo" value="disciplina">
            Digite código da disciplina a ser alterada: <input type="text" name="cod_disciplina2" id="cod_disciplina2"><br>
            Digite nome novo da disciplina: <input type="text" name="nome_disciplina" id="nome_disciplina"><br>
            Digite código novo da disciplina: <input type="text" name="cod_disciplina" id="cod_disciplina"><br>
            Digite código novo do curso a que pertence: <input type="text" name="cod_curso" id="cod_curso">
        <input class="btn btn-primary" type="submit" name="OK" value="Alterar">
        </form>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
