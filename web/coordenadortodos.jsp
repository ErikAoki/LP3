<%-- 
    Document   : paginatodos
    Created on : 18/10/2017, 16:30:11
    Author     : AOKI
--%>

<%@page import="mack.entity.Coordenador"%>
<%@page import="mack.dao.impl.DAOMySQL"%>
<%@page import="java.util.List"%>
<% DAOMySQL dao = new DAOMySQL();


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Usuários</h1>
        <%
            List<Coordenador> coordenadores = dao.getAllCoordenadores();
            
            if(coordenadores == null) {
            System.out.println("Problema ao tentar buscar os alunos");
            return;
        } 
        
        for(Coordenador coordenador : coordenadores) {
            out.println("Aluno: " + coordenador.getNome_coordenador() + "<br> Código: " +
                    coordenador.getCod_coordenador() + ".<br><br>");
        }
        %>
   
    </body>
</html>
