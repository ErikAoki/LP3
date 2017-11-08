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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Coordenadores</h1>
        <%
            List<Coordenador> coordenadores = dao.getAll();
            
            if(coordenadores == null) {
            System.out.println("Problema ao tentar buscar os coordenadores.");
            return;
        } 
        
        for(Coordenador coordenador : coordenadores) {
            out.println("Coordenador: " + coordenador.getNome_coordenador() + "<br> Código: " +
                    coordenador.getCod_coordenador() + ".<br><br>");
        }
        %>
   
    </body>
</html>
