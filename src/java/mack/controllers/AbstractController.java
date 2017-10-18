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
public abstract class AbstractController implements Controller {
    
    public HttpServletRequest request;
    protected String returnPage;
    
    @Override
    public void init(HttpServletRequest request) {
        this.request = request;
    }
    
    @Override
    public String getReturnPage() {
        return this.returnPage;
    }
    
    public void setReturnPage(String returnPage) {
        this.returnPage = returnPage;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }
    
}
