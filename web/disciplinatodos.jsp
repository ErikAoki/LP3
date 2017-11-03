<%-- 
    Document   : paginatodos
    Created on : 18/10/2017, 16:30:11
    Author     : AOKI
--%>

<%@page import="mack.dao.impl.DAOMySQLDisciplina"%>
<%@page import="mack.entity.Disciplina"%>
<%@page import="java.util.List"%>
<% DAOMySQLDisciplina dao = new DAOMySQLDisciplina();


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Disciplinas</h1>
        <%
            List<Disciplina> disciplinas = dao.getAll();
            
            if(disciplinas == null) {
            System.out.println("Problema ao tentar buscar as disciplinas");
            return;
        } 
        
        for(Disciplina disciplina : disciplinas) {
            out.println("Disciplina: " + disciplina.getNome_disciplina() + "<br> Código da discplina: " +
                    disciplina.getCod_disciplina() + "<br> Código do curso a que pertence: "+ disciplina.getCod_curso() + ".<br><br>");
        }
        %><br>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
