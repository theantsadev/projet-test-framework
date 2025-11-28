package com.itu.gest_emp.controller;

import servlet.annotations.Controller;
import servlet.annotations.RequestParam;
import servlet.annotations.Url;
import servlet.annotations.mapping.GetMapping;
import servlet.annotations.mapping.PostMapping;

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

    @Url("/personne")
    @GetMapping
    public String get(String var2, Integer id) {
        return var2;
    }

    @Url("/personne")
    @PostMapping
    public String post(String var2, Integer id) {
        return var2;
    }

    @Url("/test/{id}")
    public String getVar2(@RequestParam(name = "var2") String var2, Integer id) {
        return var2;
    }

}
