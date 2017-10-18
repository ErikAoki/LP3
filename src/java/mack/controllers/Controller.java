/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mack.controllers;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author joaquim
 */
public interface Controller {
    public void execute();
    public String getReturnPage();
    public void init(HttpServletRequest request);
}
