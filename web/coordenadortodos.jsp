<%-- 
    Document   : paginatodos
    Created on : 18/10/2017, 16:30:11
    Author     : AOKI
--%>

<%@page import="mack.entity.Coordenador"%>
<%@page import="mack.dao.impl.DAOMySQLCoordenador"%>
<%@page import="java.util.List"%>
<% DAOMySQLCoordenador dao = new DAOMySQLCoordenador();


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
        <h4 class="text-center">Lista de Coordenadores</h4>
        <br>
        <div class="container">
            <div class="form-group">
        <%
            List<Coordenador> alunos = dao.getAll();
            
            if(alunos == null) {
            System.out.println("<h5 class=\"text-center\">Problema ao tentar buscar os coordenadores</h5>");
            return;
        } 
        
        for(Coordenador aluno : alunos) {
            out.println("<h6 class=\"text-center\"> Nome do coordenador: " + aluno.getNome_coordenador() + "</h6><h6 class=\"text-center\"> Código do coordenador: " +
                    aluno.getCod_coordenador() + "</h6><h6 class=\"text-center\">Código do curso: " + aluno.getCod_curso() + "</h6><br><br>");
        }
        %><br>
        <form class="container" action="FrontController" method="post">
                <div class="col-md-4 text-center">
                    <input type="hidden" name="tipo" value="coordenador">
                    <button class="btn btn-outline-primary" type="submit" name="control" value="Voltar">Voltar</button>
                </div>
        </form>
            </div>
        </div>
    </body>
</html>
