<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" 
              integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Pagina2" />
            <input type="hidden" name="tipo" value="alunodisc">
            <h1>OBSERVA��O: OP��ES UTILIZADAS AQUI 
                PRECISAM TER CORRESPOND�NCIA NAS
                TABELAS ALUNO E DISCIPLINA</h1>
            <br>Voc� deseja: 
            <br>Inserir aluno/disciplina
            <input type="radio" name="opcao" value="inserir"><br>
            Procurar aluno/disciplina
            <input type="radio" name="opcao" value="procurar"><br>
            Alterar aluno/disciplina
            <input type="radio" name="opcao" value="alterar"><br>
            Deletar aluno/disciplina
            <input type="radio" name="opcao" value="deletar"><br>
            Ver todos os alunos/disciplina
            <input type="radio" name="opcao" value="todos"><br>
            <input class="btn btn-primary" type="submit" name="OK" value="Enviar">
            </form>
            <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
        </div>
    </body>
</html>
