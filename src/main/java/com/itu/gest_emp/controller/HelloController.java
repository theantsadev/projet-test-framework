package com.itu.gest_emp.controller;

import java.util.Map;

import servlet.ModelView;
import servlet.annotations.Controller;
import servlet.annotations.RequestParam;
import servlet.annotations.mapping.GetMapping;
import servlet.annotations.mapping.PostMapping;
import servlet.annotations.mapping.RequestMapping;

@Controller
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return "Bonjour depuis le framework !";
    }

    @GetMapping("/form")
    public ModelView getForm() {
        ModelView modelView = new ModelView();
        modelView.setView("pages/form.jsp");
        return modelView;
    }

    @GetMapping("/bye")
    public String bye() {
        return "Au revoir !";
    }

    @GetMapping("/etudiant/{id}")
    public int get(int id) {
        return id;
    }

    @RequestMapping("/personne")
    public String get(String var2, Integer id) {
        return var2;
    }

    @PostMapping("/save")
    public ModelView save(Map<String, Object> parameters) {
        ModelView modelView = new ModelView();
        modelView.setAttributes(parameters);
        modelView.setView("pages/result.jsp");
        return modelView;
    }

    @GetMapping("/test/{id}")
    public String getVar2(@RequestParam(name = "var2") String var2, Integer id) {
        return var2;
    }

}
