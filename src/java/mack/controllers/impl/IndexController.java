/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.controllers.impl;

import javax.servlet.http.HttpServletRequest;
import mack.controllers.AbstractController;
import mack.controllers.Controller;

/**
 *
 * @author joaquim
 */
public class IndexController extends AbstractController {
    
    @Override
    public void execute() {
        this.setReturnPage("/index.html");
    }
}
