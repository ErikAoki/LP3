<%-- 
    Document   : resultado
    Created on : 17/10/2017, 19:01:31
    Author     : AOKI
--%>
<%@page import="java.util.List"%>
<%@page import="mack.entity.AlunoDisc"%>
<%@page import="mack.dao.impl.DAOMySQLAlunoDisc"%>
<%  String opcao = request.getParameter("opcao");
    String cod_aluno = request.getParameter("cod_aluno");
    String cod_disciplina = request.getParameter("cod_disciplina");
    String nota = request.getParameter("nota_aluno");
    String cod_aluno2 = request.getParameter("cod_aluno2");
    String resultado = "";
   DAOMySQLAlunoDisc dao = new DAOMySQLAlunoDisc();
   if ("inserir".equals(opcao)) {
       AlunoDisc a1 = new AlunoDisc(Integer.parseInt(cod_aluno), 
               Integer.parseInt(cod_disciplina), Integer.parseInt(nota));
       if (dao.create(a1)==true) {
       resultado = "Aluno inserido com sucesso.";
       } else {
       resultado = "Aluno não foi inserido com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       AlunoDisc a1 = new AlunoDisc(Integer.parseInt(cod_aluno), 
               Integer.parseInt(cod_disciplina), Integer.parseInt(nota));
       if (dao.update(Integer.parseInt(cod_aluno), a1) == true) {
           resultado = "Aluno alterado com sucesso.";
       } else {
           resultado = "Aluno não foi alterado com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(cod_aluno)) == true) {
           resultado = "Aluno deletado com sucesso.";
       } else {
           resultado = "Aluno não foi deletado com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       AlunoDisc a = dao.read(Integer.parseInt(cod_aluno));
       if (a==null){
           resultado = "Não foi encontrado aluno com esse código.";
       } else {
           resultado = "O código do aluno é: " + a.getCod_aluno() + ". "
                   + "<br>E o código da disciplina é: " + a.getCod_disciplina()
                   +".<br>E a nota é: " + a.getNota()+".";
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
