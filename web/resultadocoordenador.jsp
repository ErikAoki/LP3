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
       resultado = "Coordenador inserido com sucesso.";
       } else {
       resultado = "Coordenador não foi inserido com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       Coordenador a1 = new Coordenador(Integer.parseInt(codCoordenador), nomeCoordenador, Integer.parseInt(cod_curso));
       if (dao.update(Integer.parseInt(codAlterar), a1) == true) {
           resultado = "Coordenador alterado com sucesso.";
       } else {
           resultado = "Coordenador não foi alterado com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(codCoordenador)) == true) {
           resultado = "Coordenador deletado com sucesso.";
       } else {
           resultado = "Coordenador não foi deletado com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       Coordenador a = dao.read(Integer.parseInt(codCoordenador));
       if (a==null){
           resultado = "Não foi encontrado coordenador com esse código.";
       } else {
           System.out.println("parte2");
           resultado = "O nome da coordenador é: " + a.getNome_coordenador() + ". "
                   + "E o código dela é: " + a.getCod_coordenador() + ".";
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
