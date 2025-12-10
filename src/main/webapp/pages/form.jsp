<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire d'enregistrement d'une personne</title>
</head>

<body>
    <h1>Enregistrement d'une personne</h1>
    <form action="save" method="post">
        <div>
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>
        </div>
        <div>
            <label for="prenom">Prénom :</label>
            <input type="text" id="prenom" name="prenom" required>
        </div>
        <div>
            <label for="age">Âge :</label>
            <input type="number" id="age" name="age" min="0" required>
        </div>
        <div>
            <button type="submit">Enregistrer la personne</button>
        </div>
    </form>
</body>

</html>
