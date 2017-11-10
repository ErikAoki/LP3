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
        <h4 class="text-center">O que você deseja fazer?</h4>
        <br>
        <form class="container" action="FrontController" method="post">
            <div class="form-group">
                <input type="hidden" name="tipo" value="aluno">
                <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="opcao" value="inserir">
                      Inserir aluno
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="opcao" value="procurar">
                        Procurar aluno
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="opcao" value="alterar">
                        Alterar aluno
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="opcao" value="deletar">
                        Deletar aluno
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="opcao" value="todos">
                        Ver todos os alunos
                    </label>
                </div>
                <button class="btn btn-outline-primary" type="submit" name="control" value="Pagina2">Enviar</button>
                <button class="btn btn-outline-primary" type="submit" name="control" value="Index">Voltar</button>
            </div>
        </form>
    </body>
</html>
