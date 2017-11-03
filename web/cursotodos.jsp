<%-- 
    Document   : paginatodos
    Created on : 18/10/2017, 16:30:11
    Author     : AOKI
--%>

<%@page import="mack.entity.Curso"%>
<%@page import="mack.dao.impl.DAOMySQLCurso"%>
<%@page import="java.util.List"%>
<% DAOMySQLCurso dao = new DAOMySQLCurso();


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Cursos</h1>
        <%
            List<Curso> cursos = dao.getAll();
            
            if(cursos == null) {
            System.out.println("Problema ao tentar buscar os cursos");
            return;
        } 
        
        for(Curso curso : cursos) {
            out.println("Curso: " + curso.getNome_curso() + "<br> Código: " +
                    curso.getCod_curso() + ".<br><br>");
        }
        %><br>
        <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
    </body>
</html>
