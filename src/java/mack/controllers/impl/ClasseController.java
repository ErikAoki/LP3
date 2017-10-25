/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.controllers.impl;

import javax.servlet.DispatcherType;
import javax.servlet.http.HttpServletRequest;
import mack.controllers.AbstractController;
import mack.controllers.Controller;
/**
 *
 * @author joaquim
 */
public class ClasseController extends AbstractController {
    
    @Override
    public void execute() {
        String opcao = request.getParameter("opcao");
        if ("aluno".equals(opcao)) {
            this.setReturnPage("/aluno.jsp");
    }
        if ("disciplina".equals(opcao)) {
            this.setReturnPage("/disciplina.jsp");
        }
        if ("curso".equals(opcao)) {
            this.setReturnPage("/curso.jsp");
        }
        if ("coordenador".equals(opcao)) {
            this.setReturnPage("/coordenador.jsp");
        }
    }
}
