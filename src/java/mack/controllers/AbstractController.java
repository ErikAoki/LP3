package mack.controllers;

import javax.servlet.http.HttpServletRequest;

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
