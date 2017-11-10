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
        <h4 class="text-center">Inserir coordenador</h4>
        <br>
        <form class="container" action="FrontController" method="post">
            <div class="form-group">
                <input type="hidden" name="opcao" value="inserir">
                <input type="hidden" name="tipo" value="coordenador">
                <div class="form-group">
                    <label class="col-form-label" for="nome_coordenador">Nome do coordenador a ser inserido: </label>
                    <input type="text" class="form-control" name="nome_coordenador" id="nome_coordenador" placeholder="Nome do coordenador">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="cod_coordenador">Código do coordenador a ser inserido: </label>
                    <input type="text" class="form-control" name="cod_coordenador" id="cod_coordenador" placeholder="Código do coordenador">
                </div>
                <div class="form-group">
                    <label class="col-form-label" for="cod_curso">Código do curso a ser inserido: </label>
                    <input type="text" class="form-control" name="cod_curso" id="cod_curso" placeholder="Código do curso">
                </div>
                <button class="btn btn-outline-primary" type="submit" name="control" value="Resultado">Enviar</button>
                <button class="btn btn-outline-primary" type="submit" name="control" value="Voltar">Voltar</button>
            </div>
        </form>
    </body>
</html>
