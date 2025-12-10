package com.itu.gest_emp.model;

public class Employe {
    int id;
    String nom, prenom;
    int age;
    Departement[] departements;

    public Employe() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Departement[] getDepartements() {
        return departements;
    }

    public void setDepartements(Departement[] departements) {
        this.departements = departements;
    }

    public Employe(int id, String nom, String prenom, int age, Departement[] departements) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.age = age;
        this.departements = departements;
    }

}
