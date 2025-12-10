<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire d'enregistrement d'un employe</title>
</head>

<body>
    <h1>Enregistrement d'un employe</h1>
    <form action="save-emp" method="post">
        <div>
            <label for="id">id :</label>
            <input type="number" id="employe.id" name="employe.id" required>
        </div>
        <div>
            <label for="nom">Nom :</label>
            <input type="text" id="employe.nom" name="employe.nom" required>
        </div>
        <div>
            <label for="prenom">Prénom :</label>
            <input type="text" id="employe.prenom" name="employe.prenom" required>
        </div>
        <div>
            <label for="age">Âge :</label>
            <input type="number" id="employe.age" name="employe.age" min="0" required>
        </div>
        <div>
            <label for="departement1">Departement1 :</label>
            <input type="text" id="employe.departements[0].nom" name="employe.departements[0].nom">
        </div>
        <div>
            <label for="departement2">Departement2 :</label>
            <input type="text" id="employe.departements[1].nom" name="employe.departements[1].nom">
        </div>
        <div>
            <button type="submit">Enregistrer l'employe</button>
        </div>
    </form>
</body>

</html>