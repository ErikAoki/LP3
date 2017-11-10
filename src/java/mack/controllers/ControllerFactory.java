package mack.controllers;

import java.util.logging.Level;
import java.util.logging.Logger;

public class ControllerFactory {

    public static final Controller getControllerByClass(Class actionClass) {
        try {
            return (Controller) actionClass.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static final Controller getControllerByFullClassName(String className) {
        try {
            String name = "mack.controllers.impl." 
                    + className
                    + "Controller";
            Class actionClass = Class.forName(name);
            return getControllerByClass(actionClass);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
    
//    public static final Controller getController(String name) {
//        try {
//            return (Controller)Class.forName("mack.controllers.impl"+name+"Controller")
//                    .newInstance();
//        } catch (Exception ex) {
//            Logger.getLogger(ControllerFactory.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }
}
