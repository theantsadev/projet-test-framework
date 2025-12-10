<%@ page import="com.itu.gest_emp.model.Employe" %>
    <% Employe employe=(Employe) request.getAttribute("employe"); %>
        <p>Nom : <%= employe.getNom() %>
        </p>
        <p>Prénom : <%= employe.getPrenom() %>
        </p>
        <p>Âge : <%= employe.getAge() %>
        </p>

        <% if (employe.getDepartements() !=null) { %>
            <h3>Départements :</h3>
            <ul>
                <% for (int i=0; i < employe.getDepartements().length; i++) { %>
                    <li>
                        <%= employe.getDepartements()[i].getNom() %>
                    </li>
                    <% } %>
            </ul>
            <% } %>