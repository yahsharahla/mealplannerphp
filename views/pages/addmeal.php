<h1 class="heading">Ingredients</h1>

<?php
    if (isset($_SESSION['ingredients'])){
        echo '<form action="?controllers=control&action=createmeal" name="ingredientsList" method="post">';
        $ingredients = $_SESSION['ingredients'];
        foreach ($ingredients as $ingredient){
            echo '<input type="checkbox" name="ingredients[]" value="'.$ingredient.'"/>'.$ingredient.'';
        }
        echo '<input type="submit" name="formSubmit" value="Submit" /></form>';
    } else {
        echo '<h3>No ingredients in database</h3>';
    }
?>

 