<%-- 
    Document   : pagina1
    Created on : 25/08/2017, 09:25:51
    Author     : 31661459
--%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
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
        <br>
        <h4 class="text-center">Alterar aluno</h4>
        <br>
        <form class="container" action="FrontController" method="post">
            <div class="form-group">
                <input type="hidden" name="opcao" value="alterar">
                <input type="hidden" name="tipo" value="aluno">
                <div class="form-group">
                    <label class="col-form-label" for="cod_aluno2">Código do aluno a ser alterado: </label>
                    <input type="text" class="form-control" name="cod_aluno2" id="cod_aluno2" placeholder="Código do aluno a ser alterado">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="nome_aluno">Novo nome do aluno: </label>
                    <input type="text" class="form-control" name="nome_aluno" id="nome_aluno" placeholder="Novo nome do aluno">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="cod_aluno">Novo código do aluno: </label>
                    <input type="text" class="form-control" name="cod_aluno" id="cod_aluno" placeholder="Novo código do aluno">
                </div>
                <button class="btn btn-outline-primary" type="submit" name="control" value="Resultado">Enviar</button>
                <button class="btn btn-outline-primary" type="submit" name="control" value="Index">Voltar</button>
                </div>
            </div>
        </form>
    </body>
</html>
