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

    @Url("/etudiant/{id}")
    public int get(int id) {
        return id;
    }

}
