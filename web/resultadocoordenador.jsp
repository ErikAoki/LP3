<%-- 
    Document   : resultado
    Created on : 17/10/2017, 19:01:31
    Author     : AOKI
--%>
<%@page import="java.util.List"%>
<%@page import="mack.entity.Coordenador"%>
<%@page import="mack.dao.impl.DAOMySQLCoordenador"%>
<%  String opcao = request.getParameter("opcao");
    String nomeCoordenador = request.getParameter("nome_coordenador");
    String codCoordenador = request.getParameter("cod_coordenador");
    String codAlterar = request.getParameter("cod_coordenador2");
    String cod_curso = request.getParameter("cod_curso");
    String resultado = "";
   DAOMySQLCoordenador dao = new DAOMySQLCoordenador();
   if ("inserir".equals(opcao)) {
       Coordenador a1 = new Coordenador(Integer.parseInt(codCoordenador), nomeCoordenador, Integer.parseInt(cod_curso));
       if (dao.create(a1)==true) {
       resultado = "Coordenador(a) inserido(a) com sucesso.";
       } else {
       resultado = "Coordenador(a) não foi inserido(a) com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       Coordenador a1 = new Coordenador(Integer.parseInt(codCoordenador), nomeCoordenador, Integer.parseInt(cod_curso));
       if (dao.update(Integer.parseInt(codAlterar), a1) == true) {
           resultado = "Coordenador(a) alterado(a) com sucesso.";
       } else {
           resultado = "Coordenador(a) não foi alterado(a) com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(codCoordenador)) == true) {
           resultado = "Coordenador(a) deletado(a) com sucesso.";
       } else {
           resultado = "Coordenador(a) não foi deletado(a) com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       Coordenador a = dao.read(Integer.parseInt(codCoordenador));
       if (a==null){
           resultado = "Não foi encontrado coordenador(a) com esse código.";
       } else {
           System.out.println("parte2");
           resultado = "O nome do(a) coordenador(a) é: " + a.getNome_coordenador() + ". "
                   + "<br>E o código dele(a) é: " + a.getCod_coordenador() + "."
                   + "<br>E o código do curso dele é: " + a.getCod_curso() + ".";
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
        <% System.out.println("parte3");
            out.print(resultado); %>
    </body>
</html>
