<!-- pages/test-form.jsp -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de test - Tableaux et objets mixtes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
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
            font-size: 1.3em;
        }
        .section {
            margin: 25px 0;
            padding: 20px;
            background-color: #f9f9f9;
            border-left: 4px solid #4CAF50;
            border-radius: 4px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76,175,80,0.3);
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
        .info {
            background-color: #e3f2fd;
            padding: 15px;
            border-radius: 4px;
            margin-bottom: 20px;
            border-left: 4px solid #2196F3;
        }
        .info code {
            background-color: #fff;
            padding: 2px 6px;
            border-radius: 3px;
            font-family: monospace;
            color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1> Test de Binding Avancé</h1>
        
        <div class="info">
            <strong>Ce formulaire teste :</strong><br>
            . Tableau d'objets : <code>Employe[] employes</code><br>
            . Objet simple : <code>Departement d</code><br>
            . Type primitif : <code>int deptId</code>
        </div>

        <form action="submit-test" method="post">
            
            <!-- Section : Tableau d'employés -->
            <h2>Tableau d'Employés (employes[])</h2>
            
            <div class="section">
                <h3>Employé #1</h3>
                <div class="form-group">
                    <label for="employes0-id">ID :</label>
                    <input type="number" id="employes0-id" name="employes[0].id" value="101" required>
                </div>
                <div class="form-group">
                    <label for="employes0-nom">Nom :</label>
                    <input type="text" id="employes0-nom" name="employes[0].nom" value="RAKOTO" required>
                </div>
                <div class="form-group">
                    <label for="employes0-prenom">Prénom :</label>
                    <input type="text" id="employes0-prenom" name="employes[0].prenom" value="Jean" required>
                </div>
                <div class="form-group">
                    <label for="employes0-age">Âge :</label>
                    <input type="number" id="employes0-age" name="employes[0].age" value="25" min="0" required>
                </div>
            </div>

            <div class="section">
                <h3>Employé #2</h3>
                <div class="form-group">
                    <label for="employes1-id">ID :</label>
                    <input type="number" id="employes1-id" name="employes[1].id" value="102" required>
                </div>
                <div class="form-group">
                    <label for="employes1-nom">Nom :</label>
                    <input type="text" id="employes1-nom" name="employes[1].nom" value="RANDRIA" required>
                </div>
                <div class="form-group">
                    <label for="employes1-prenom">Prénom :</label>
                    <input type="text" id="employes1-prenom" name="employes[1].prenom" value="Marie" required>
                </div>
                <div class="form-group">
                    <label for="employes1-age">Âge :</label>
                    <input type="number" id="employes1-age" name="employes[1].age" value="30" min="0" required>
                </div>
            </div>

            <div class="section">
                <h3>Employé #3</h3>
                <div class="form-group">
                    <label for="employes2-id">ID :</label>
                    <input type="number" id="employes2-id" name="employes[2].id" value="103" required>
                </div>
                <div class="form-group">
                    <label for="employes2-nom">Nom :</label>
                    <input type="text" id="employes2-nom" name="employes[2].nom" value="RAZAF" required>
                </div>
                <div class="form-group">
                    <label for="employes2-prenom">Prénom :</label>
                    <input type="text" id="employes2-prenom" name="employes[2].prenom" value="Paul" required>
                </div>
                <div class="form-group">
                    <label for="employes2-age">Âge :</label>
                    <input type="number" id="employes2-age" name="employes[2].age" value="28" min="0" required>
                </div>
            </div>

            <!-- Section : Département (objet simple) -->
            <h2> Département (objet d)</h2>
            <div class="section">
                <div class="form-group">
                    <label for="d-id">ID du département :</label>
                    <input type="number" id="d-id" name="d.id" value="1" required>
                </div>
                <div class="form-group">
                    <label for="d-nom">Nom du département :</label>
                    <input type="text" id="d-nom" name="d.nom" value="Informatique" required>
                </div>
            </div>

            <!-- Section : ID (type primitif) -->
            <h2>🔢 ID Département (int deptId)</h2>
            <div class="section">
                <div class="form-group">
                    <label for="deptId">ID :</label>
                    <input type="number" id="deptId" name="deptId" value="42" required>
                </div>
            </div>

            <button type="submit">✅ Envoyer les données</button>
        </form>
    </div>
</body>
</html>