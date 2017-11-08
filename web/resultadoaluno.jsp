<%-- 
    Document   : resultado
    Created on : 17/10/2017, 19:01:31
    Author     : AOKI
--%>
<%@page import="java.util.List"%>
<%@page import="mack.entity.Aluno"%>
<%@page import="mack.dao.impl.DAOMySQL"%>
<%  String opcao = request.getParameter("opcao");
    String nomeAluno = request.getParameter("nome_aluno");
    String codAluno = request.getParameter("cod_aluno");
    String codAlterar = request.getParameter("cod_aluno2");
    Aluno a1 = new Aluno(Integer.parseInt(codAluno), nomeAluno);
    String resultado = "";
   DAOMySQL dao = new DAOMySQL();
   if ("inserir".equals(opcao)) {
       if (dao.create(a1)==true) {
       resultado = "Aluno inserido com sucesso.";
       } else {
       resultado = "Aluno não foi inserido com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       if (dao.update(Integer.parseInt(codAlterar), a1) == true) {
           resultado = "Aluno alterado com sucesso.";
       } else {
           resultado = "Aluno não foi alterado com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(codAluno)) == true) {
           resultado = "Aluno deletado com sucesso.";
       } else {
           resultado = "Aluno não foi deletado com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       Aluno a = dao.read(Integer.parseInt(codAluno));
       if (a==null){
           resultado = "Não foi encontrado aluno com esse código.";
       } else {
           resultado = "O nome do aluno é: " + a.getNome_aluno() + ". "
                   + "<br>E o código dele é: " + a.getCod_aluno() + ".";
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
