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
       resultado = "Aluno/disciplina/nota inserido com sucesso.";
       } else {
       resultado = "Aluno/disciplina/nota não foi inserido com sucesso.";
       }
   }
   if ("alterar".equals(opcao)) {
       AlunoDisc a1 = new AlunoDisc(Integer.parseInt(cod_aluno), 
               Integer.parseInt(cod_disciplina), Integer.parseInt(nota));
       if (dao.update(Integer.parseInt(cod_aluno), a1) == true) {
           resultado = "Aluno/disciplina/nota alterado com sucesso.";
       } else {
           resultado = "Aluno/disciplina/nota não foi alterado com sucesso.";
       }
   }
   if ("deletar".equals(opcao)) {
       if (dao.delete(Integer.parseInt(cod_aluno)) == true) {
           resultado = "Aluno/disciplina/nota deletado com sucesso.";
       } else {
           resultado = "Aluno/disciplina/nota não foi deletado com sucesso.";
       }
   }
   
   if ("procurar".equals(opcao)) {
       AlunoDisc a = dao.read(Integer.parseInt(cod_aluno));
       if (a==null){
           resultado = "Não foi encontrado Aluno/disciplina/nota com esse código.";
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

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Projeto de LP3</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/resume.min.css" rel="stylesheet">

  </head>
    <body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="https://www.facebook.com/aoki.erik">
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/ee.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="https://www.facebook.com/aoki.erik">Erik</a>
          </li>
        </ul>
      <a class="navbar-brand js-scroll-trigger" href="https://www.facebook.com/aron.martins.9">
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/aa.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="https://www.facebook.com/aron.martins.9">Aron</a>
          </li>
        </ul>
      <a class="navbar-brand js-scroll-trigger" href="https://www.facebook.com/vitor.loredomesquita">
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/ll.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="https://www.facebook.com/vitor.loredomesquita">Vitor</a>
          </li>
        </ul>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
      </div>
    </nav>

    <div class="container-fluid p-0">

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
        <div class="my-auto">
          <h1 class="mb-0">Resultado da
            <span class="text-primary">ação</span>
          </h1>
          <div class="subheading mb-5">
          </div>
           <form class="container" action="FrontController" method="post">
                <div class="form-group">
                    <% out.println(resultado); %>
                </div>
                <input type="hidden" name="tipo" value="alunodisc">
                <button class="btn btn-outline-danger" type="submit" name="control" value="Voltar">Voltar</button>
        </form>
        </div>
      </section>

      
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>

  </body>
</html>
