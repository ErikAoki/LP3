<%-- 
    Document   : resultado
    Created on : 17/10/2017, 19:01:31
    Author     : AOKI
--%>
<%@page import="java.util.List"%>
<%@page import="mack.entity.Disciplina"%>
<%@page import="mack.dao.impl.DAOMySQLDisciplina"%>
<%  String opcao = request.getParameter("opcao");
    String nomeDisciplina = request.getParameter("nome_disciplina");
    String codDisciplina = request.getParameter("cod_disciplina");
    String codAlterar = request.getParameter("cod_disciplina2");
    String cod_curso = request.getParameter("cod_curso");
    String resultado = "";
   DAOMySQLDisciplina dao = new DAOMySQLDisciplina();
   if ("inserir".equals(opcao)) {
       Disciplina a1 = new Disciplina(Integer.parseInt(codDisciplina), Integer.parseInt(cod_curso), nomeDisciplina);
       if (dao.create(a1)==true) {
       resultado = "Disciplina inserida com sucesso.";
       } else {
       resultado = "Disciplina não foi inserida com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       Disciplina a1 = new Disciplina(Integer.parseInt(codDisciplina), Integer.parseInt(cod_curso), nomeDisciplina);
       if (dao.update(Integer.parseInt(codAlterar), a1) == true) {
           resultado = "Disciplina alterada com sucesso.";
       } else {
           resultado = "Disciplina não foi alterada com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(codDisciplina)) == true) {
           resultado = "Disciplina deletada com sucesso.";
       } else {
           resultado = "Disciplina não foi deletada com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       Disciplina a = dao.read(Integer.parseInt(codDisciplina));
       if (a==null){
           resultado = "Não foi encontrada disciplina com esse código.";
       } else {
           System.out.println("parte2");
           resultado = "O nome da disciplina é: " + a.getNome_disciplina() + ". "
                   + "<br>E o código dela é: " + a.getCod_disciplina() + "." +
                   "<br>E o código do curso dela é: " + a.getCod_curso()+".";
                   }
       }
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
        <% out.print("<h2 class=\"text-center\">" + resultado + "</h2>"); %>
    </body>
</html>
