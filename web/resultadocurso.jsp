<%-- 
    Document   : resultado
    Created on : 17/10/2017, 19:01:31
    Author     : AOKI
--%>
<%@page import="java.util.List"%>
<%@page import="mack.entity.Curso"%>
<%@page import="mack.dao.impl.DAOMySQLCurso"%>
<%  String opcao = request.getParameter("opcao");
    String nomeCurso = request.getParameter("nome_curso");
    String codCurso = request.getParameter("cod_curso");
    String codAlterar = request.getParameter("cod_curso2");
    Curso a1 = new Curso(Integer.parseInt(codCurso), nomeCurso);
    String resultado = "";
   DAOMySQLCurso dao = new DAOMySQLCurso();
   if ("inserir".equals(opcao)) {
       if (dao.create(a1)==true) {
       resultado = "Curso inserido com sucesso.";
       } else {
       resultado = "Curso não foi inserido com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       if (dao.update(Integer.parseInt(codAlterar), a1) == true) {
           resultado = "Curso alterado com sucesso.";
       } else {
           resultado = "Curso não foi alterado com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(codCurso)) == true) {
           resultado = "Curso deletado com sucesso.";
       } else {
           resultado = "Curso não foi deletado com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       Curso a = dao.read(Integer.parseInt(codCurso));
       if (a==null){
           resultado = "Não foi encontrado curso com esse código.";
       } else {
           resultado = "O nome do curso é: " + a.getNome_curso() + ". "
                   + "<br>E o código dele é: " + a.getCod_curso() + ".";
                   }
       }
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
        <% out.print(resultado); %>
    </body>
</html>
