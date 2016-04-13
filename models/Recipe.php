<?php

class Recipe {
    
    private $recipeId;
    private $name;
    private $list_of_steps;
    private $list_of_ingredients;
    
    public function __construct($name){
        $this->name = $name;
    }
    
    public function getSteps(){
        return $this->list_of_steps;
    }
    
    public function setSteps($steps){
        $this->list_of_steps = $steps;
    }
    
    public function getIngredients(){
        return $this->list_of_ingredients;
    }
    
    public function setIngredients($ingredients){
        $this->list_of_ingredients = $ingredients;
    }
    
    public function addStep($step){
        array_push($this->list_of_steps, $step);
    }
    
    public function removeStep($step){
         if (($key = array_search($step, $this->list_of_steps)) !== false) {
            unset($array[$key]);
        }
    }
    
    public function addIngredient($ingredient){
        array_push($this->list_of_ingredients, $ingredient);
    }
    
    public function removeIngredient($ingredient){
        if (($key = array_search($ingredient, $this->list_of_ingredients)) !== false) {
            unset($array[$key]);
        }
    }
    
    
}

?>