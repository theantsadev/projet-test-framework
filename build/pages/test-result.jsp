<!-- ================================================================ -->
<!-- pages/test-result.jsp -->
<!-- ================================================================ -->

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat du test</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            border-bottom: 3px solid #4CAF50;
            padding-bottom: 10px;
        }
        h2 {
            color: #555;
            margin-top: 30px;
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border-radius: 4px;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 4px;
            border-left: 4px solid #28a745;
            margin-bottom: 30px;
        }
        .employee-card {
            background-color: #f9f9f9;
            border-left: 4px solid #2196F3;
            padding: 20px;
            margin: 15px 0;
            border-radius: 4px;
        }
        .employee-card h3 {
            color: #2196F3;
            margin-top: 0;
        }
        .info-row {
            display: flex;
            margin: 10px 0;
            padding: 8px 0;
            border-bottom: 1px solid #eee;
        }
        .info-row:last-child {
            border-bottom: none;
        }
        .info-label {
            font-weight: bold;
            color: #666;
            width: 150px;
        }
        .info-value {
            color: #333;
            flex: 1;
        }
        .department-box {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 20px;
            border-radius: 8px;
            margin: 20px 0;
        }
        .id-box {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            color: white;
            padding: 20px;
            border-radius: 8px;
            margin: 20px 0;
            text-align: center;
            font-size: 1.5em;
        }
        .back-button {
            display: inline-block;
            background-color: #2196F3;
            color: white;
            padding: 12px 30px;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 30px;
            transition: background-color 0.3s;
        }
        .back-button:hover {
            background-color: #0b7dda;
        }
        .badge {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 4px 12px;
            border-radius: 12px;
            font-size: 0.9em;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <%@ page import="com.itu.gest_emp.model.Employe" %>
    <%@ page import="com.itu.gest_emp.model.Departement" %>
    <%
        Employe[] employes = (Employe[]) request.getAttribute("employes");
        Departement d = (Departement) request.getAttribute("d");
        Integer deptId = (Integer) request.getAttribute("deptId");
    %>

    <div class="container">
        <h1> Résultat du Binding</h1>
        
        <div class="success">
            <strong>🎉 Succès !</strong> Toutes les données ont été correctement bindées par le FrontServlet !
        </div>

        <!-- Tableau d'employés -->
        <h2> Tableau d'Employés (Employe[] employes)</h2>
        <% if (employes != null && employes.length > 0) { %>
            <p>Nombre d'employés reçus : <span class="badge"><%= employes.length %></span></p>
            
            <% for (int i = 0; i < employes.length; i++) { 
                Employe emp = employes[i];
                if (emp != null) {
            %>
                <div class="employee-card">
                    <h3>👤 Employé #<%= (i + 1) %></h3>
                    <div class="info-row">
                        <div class="info-label">ID :</div>
                        <div class="info-value"><%= emp.getId() %></div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Nom :</div>
                        <div class="info-value"><%= emp.getNom() %></div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Prénom :</div>
                        <div class="info-value"><%= emp.getPrenom() %></div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Âge :</div>
                        <div class="info-value"><%= emp.getAge() %> ans</div>
                    </div>
                </div>
            <% 
                }
            } 
            %>
        <% } else { %>
            <p style="color: #999;">Aucun employé reçu.</p>
        <% } %>

        <!-- Département -->
        <h2> Objet Département (Departement d)</h2>
        <% if (d != null) { %>
            <div class="department-box">
                <h3 style="margin-top: 0; color: white;">Département</h3>
                <div style="font-size: 1.1em;">
                    <strong>ID :</strong> <%= d.getId() %><br>
                    <strong>Nom :</strong> <%= d.getNom() %>
                </div>
            </div>
        <% } else { %>
            <p style="color: #999;">Aucun département reçu.</p>
        <% } %>

        <!-- ID primitif -->
        <h2>🔢 Type Primitif (int deptId)</h2>
        <% if (deptId != null) { %>
            <div class="id-box">
                <strong>deptId =</strong> <%= deptId %>
            </div>
        <% } else { %>
            <p style="color: #999;">Aucun ID reçu.</p>
        <% } %>

        <a href="test-form" class="back-button">← Retour au formulaire</a>
    </div>
</body>
</html>