<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Pagina2" />
            <input type="hidden" name="tipo" value="aluno">
            Você deseja: 
            <br>Inserir aluno
            <input type="radio" name="opcao" value="inserir"><br>
            Procurar aluno
            <input type="radio" name="opcao" value="procurar"><br>
            Alterar aluno
            <input type="radio" name="opcao" value="alterar"><br>
            Deletar aluno
            <input type="radio" name="opcao" value="deletar"><br>
            Ver todos os alunos
            <input type="radio" name="opcao" value="todos"><br>
            <input type="submit" name="OK" value="Enviar">
            </form>
            <form action="FrontController" method="post">
            <input type="hidden" name="control" value="Index">
            <input type="submit" value="Voltar">
        </form>
        </div>
    </body>
</html>
