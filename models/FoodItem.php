<?php

class FoodItem{
    private calories;
    private in_kitchen;
    private name;
    private $quanity;
    private $price;
    private $measurement;
    
    public function __construct($name, $calories){
        $this->calories = $calories;
        $this->in_kitchen = FALSE;
        $this->name = $name;
    }
    
    public function getName(){
        return $this->name;
    }
    
    public function getCalories(){
        return $this->calories;
    }
    
    public function inKitchen(){
        return $this->in_kitchen;
    }
    
    public function isInKitchen(){
        $this->in_kitchen = TRUE;
    }
    
    public function getQuantity(){
        return $this->quantity;
    }
    
    public function setQuantity($quantity){
        $this->quantity = $quantity;
    }
    
    public function getPrice(){
        return $this->price;
    }
    
    public function setPrice($price){
        $this->price = $price;
    }
    
    public function getMeasurement(){
        return $this->measurement;
    }
    
    public function setMeasurement($measurement){
        $this->measurement = $measurement;
    }
    
}

?>