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
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4 class="text-center">Lista de Alunos/disciplinas/notas</h4>
        <br>
            <div class="form-group">
        <%
            List<AlunoDisc> alunos = dao.getAll();
            
            if(alunos == null) {
            System.out.println("<h5 class=\"text-center\">Problema ao tentar buscar os alunos</h5>");
            return;
        } 
        
        for(AlunoDisc aluno : alunos) {
            out.println("<h6 class=\"text-center\"> Código do aluno: " + aluno.getCod_aluno() + "</h6><h6 class=\"text-center\"> Código da disciplina: " +
                    aluno.getCod_disciplina() + "</h6><h6 class=\"text-center\"> Nota do aluno: " + aluno.getNota()+"</h6><br><br>");
        }
        %><br>
        <form class="container" action="FrontController" method="post">
                <div class="col-md-4 text-center">
                    <input type="hidden" name="tipo" value="alunodisc">
                    <button class="btn btn-outline-primary" type="submit" name="control" value="Voltar">Voltar</button>
                </div>
        </form>
            </div>
    </body>
</html>
