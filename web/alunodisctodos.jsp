<%-- 
    Document   : paginatodos
    Created on : 18/10/2017, 16:30:11
    Author     : AOKI
--%>

<%@page import="mack.entity.AlunoDisc"%>
<%@page import="mack.dao.impl.DAOMySQLAlunoDisc"%>
<%@page import="java.util.List"%>
<% DAOMySQLAlunoDisc dao = new DAOMySQLAlunoDisc();


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
        <h1>Lista de Alunos</h1>
        <%
            List<AlunoDisc> alunos = dao.getAll();
            
            if(alunos == null) {
            System.out.println("Problema ao tentar buscar os alunos.");
            return;
        } 
        
        for(AlunoDisc aluno : alunos) {
            out.println("Código do aluno: " + aluno.getCod_aluno() 
                    + "<br> Código da disciplina: " + aluno.getCod_disciplina() 
                    + "<br> Nota: " + aluno.getNota() + ""
                            + ".<br><br>");
        }
        %><br>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
