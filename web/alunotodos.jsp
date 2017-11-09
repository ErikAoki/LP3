<%-- 
    Document   : paginatodos
    Created on : 18/10/2017, 16:30:11
    Author     : AOKI
--%>

<%@page import="mack.entity.Aluno"%>
<%@page import="mack.dao.impl.DAOMySQL"%>
<%@page import="java.util.List"%>
<% DAOMySQL dao = new DAOMySQL();


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
        <h4 class="text-center">Lista de Alunos</h4>
        <br>
        <div class="container">
            <div class="form-group">
        <%
            List<Aluno> alunos = dao.getAll();
            
            if(alunos == null) {
            System.out.println("<h5 class=\"text-center\">Problema ao tentar buscar os alunos</h5>");
            return;
        } 
        
        for(Aluno aluno : alunos) {
            out.println("<h6 class=\"text-center\"> Aluno: " + aluno.getNome_aluno() + "</h6><h6 class=\"text-center\"> Código: " +
                    aluno.getCod_aluno() + ".</h6><br>");
        }
        %><br>
        <form class="container" action="FrontController" method="post">
                <div class="col-md-4 text-center">
                    <input type="hidden" name="tipo" value="aluno">
                    <button class="btn btn-outline-primary" type="submit" name="control" value="Voltar">Voltar</button>
                </div>
        </form>
            </div>
        </div>
    </body>
</html>
