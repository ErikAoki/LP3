package mack.controllers;

import javax.servlet.http.HttpServletRequest;

public interface Controller {
    public void execute();
    public String getReturnPage();
    public void init(HttpServletRequest request);
}
