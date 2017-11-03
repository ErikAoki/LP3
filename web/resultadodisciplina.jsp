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
    Disciplina a1 = new Disciplina(Integer.parseInt(codDisciplina), Integer.parseInt(cod_curso), nomeDisciplina);
    String resultado = "";
   DAOMySQLDisciplina dao = new DAOMySQLDisciplina();
   if ("inserir".equals(opcao)) {
       if (dao.create(a1)==true) {
       resultado = "Disciplina inserido com sucesso.";
       } else {
       resultado = "Disciplina não foi inserido com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       if (dao.update(Integer.parseInt(codAlterar), a1) == true) {
           resultado = "Disciplina alterado com sucesso.";
       } else {
           resultado = "Disciplina não foi alterado com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(codDisciplina)) == true) {
           resultado = "Disciplina deletado com sucesso.";
       } else {
           resultado = "Disciplina não foi deletado com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       Disciplina a = dao.read(Integer.parseInt(codDisciplina));
       if (a==null){
           resultado = "Não foi encontrado disciplina com esse código.";
       } else {
           resultado = "O nome da disciplina é: " + a.getNome_disciplina() + ". "
                   + "E o código dela é: " + a.getCod_disciplina() + ".";
                   }
       }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% out.print(resultado); %>
    </body>
</html>
