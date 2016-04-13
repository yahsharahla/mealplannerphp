<?php

class Meal {
    private $mealId;
    private name;
    private type;
    private calorieCount;
    private $image;
    private $recipe;
    
    public function __construct($name, $type, $calories){
        $this->mealId = sha1($name . '' . (microtime(true)*1000));
        $this->name = $name;
        $this->type = $type;
        $this->calorieCount = $calories;
    }
    
    public function getName(){
        return $this->name;
    }
    
    public function getCalories(){
        return  $this->calorieCount;
    }
    
    public function getMealId(){
        return  $this->mealId;
    }
    
    public function setMealId($Id){
        $this->mealId = $Id;
    }
    
    public function setImage($image){
        $this->image = $image;
    }
    
    public function createRecipe(){
        $this->recipe = new Recipe($this->name);
    }
}

?>