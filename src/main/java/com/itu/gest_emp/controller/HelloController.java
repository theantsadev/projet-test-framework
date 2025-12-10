package com.itu.gest_emp.controller;

import servlet.ModelView;
import servlet.annotations.Controller;
import servlet.annotations.RequestParam;
import servlet.annotations.mapping.GetMapping;
import servlet.annotations.mapping.PostMapping;
import servlet.annotations.mapping.RequestMapping;
import servlet.enums.RequestMethod;

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

    @RequestMapping(value = "/personne", method = RequestMethod.POST)
    public String post(String var2, Integer id) {
        return var2;
    }

    @GetMapping("/test/{id}")
    public String getVar2(@RequestParam(name = "var2") String var2, Integer id) {
        return var2;
    }

}
