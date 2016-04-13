<div id="toChoose">
<h1 class="heading">what would you like to do?</h1>
<button id="addmeal" type="button" class="btn btn-success">Add a Meal</button>
<button id="genPlan" type="button" class="btn btn-success">Generate Meal Plan</button>
</div>
<div id="selectIngredients">
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
</div>
<div id="genmPlan">
twfvjufvavyuc
</div> 