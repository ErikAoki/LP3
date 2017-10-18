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
           resultado = "O nome do aluno é: " + a.getNome_aluno() + ". "
                   + "E o código dele é: " + a.getCod_aluno() + ".";
       }
   
   List<Aluno> alunos = dao.getAllAlunos();
        
        if(alunos == null) {
            System.out.println("Problema ao tentar buscar os alunos");
            return;
        } 
        
        for(Aluno aluno : alunos) {
            out.println("Aluno " + aluno.getNome_aluno() + " (" +
                    aluno.getCod_aluno() + ") encontrado via DAO");
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
