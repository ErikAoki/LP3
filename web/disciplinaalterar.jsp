<!DOCTYPE html>
<html lang="en">

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
          <h1 class="mb-0">Alterar
            <span class="text-primary">disciplina</span>
          </h1>
          <div class="subheading mb-5">
          </div>
           <form class="container" action="FrontController" method="post">
            <div class="form-group">
                <input type="hidden" name="opcao" value="alterar">
                <input type="hidden" name="tipo" value="disciplina">
                <div class="form-group">
                    <label class="col-form-label" for="cod_disciplina2">C�digo da disciplina a ser alterada: </label>
                    <input type="text" class="form-control" name="cod_disciplina2" id="cod_disciplina2" placeholder="C�digo da disciplina a ser alterada">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="nome_disciplina">Nome novo da disciplina: </label>
                    <input type="text" class="form-control" name="nome_disciplina" id="nome_disciplina" placeholder="Nome novo da disciplina">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="cod_disciplina">Novo c�digo da disciplina: </label>
                    <input type="text" class="form-control" name="cod_disciplina" id="cod_disciplina" placeholder="Novo c�digo da disciplina">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="cod_curso">Novo c�digo do curso: </label>
                    <input type="text" class="form-control" name="cod_curso" id="cod_curso" placeholder="Novo c�digo do curso">
                </div>
                <button class="btn btn-outline-danger" type="submit" name="control" value="Resultado">Enviar</button>
                <button class="btn btn-outline-danger" type="submit" name="control" value="Voltar">Voltar</button>
            </div>
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
