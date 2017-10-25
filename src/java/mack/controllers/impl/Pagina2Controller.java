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
public class Pagina2Controller extends AbstractController {
    
    @Override
    public void execute() {
        String tipo = request.getParameter("tipo");
        String opcao = request.getParameter("opcao");
        if ("inserir".equals(opcao)) {
            this.setReturnPage("/"+tipo+"inserir.jsp");
    }
        if ("alterar".equals(opcao)) {
            this.setReturnPage("/"+tipo+"alterar.jsp");
        }
        if ("deletar".equals(opcao)) {
            this.setReturnPage("/"+tipo+"deletar.jsp");
        }
        if ("procurar".equals(opcao)) {
            this.setReturnPage("/"+tipo+"procurar.jsp");
        }
        if ("todos".equals(opcao)) {
            this.setReturnPage("/"+tipo+"todos.jsp");
        }
    }
}
