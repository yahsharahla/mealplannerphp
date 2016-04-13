<div id="toChoose">
<h1 class="heading">what would you like to do?</h1>
<button id="addmeal" type="button" class="btn btn-success">Add a Meal</button>
<button id="genPlan" type="button" class="btn btn-success">Generate Meal Plan</button>
</div>
<div id="selectIngredients">
    <h1 class="heading">Select ingredients from below</h1>
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
    <h1 class="heading">Select options that suit your needs</h1>
<?php
   if (isset($_SESSION['recipes'])){
        echo '<form action="?controllers=control&action=generatePlan" name="recipeList" method="post">';
        $recipes = $_SESSION['recipes'];
        foreach ($recipes as $recipe){
            echo '<input type="checkbox" name="ingredients[]" value="'.$recipe.'"/>'.$recipe.'';
        }
        echo '<input type="submit" name="formSubmit" value="Submit" /></form>';
    } else {
        echo '<h3>No matching recipes based on selected ingredients</h3>';
    } 
    
?>
</div> 