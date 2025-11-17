package com.itu.gest_emp.controller;

import servlet.ModelView;
import servlet.annotations.Controller;
import servlet.annotations.Url;

@Controller
public class HelloController {

    @Url("/hello")
    public String hello() {
        return "Bonjour depuis le framework !";
    }

    @Url("/bye")
    public String bye() {
        return "Au revoir !";
    }

    @Url("/test")
    public ModelView test() {
        ModelView modelView = new ModelView();
        modelView.setView("pages/hello.jsp");
        modelView.addAttribute("hello", "test");
        return modelView;
    }

}
