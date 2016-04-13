<?php

class Account {
    private $first_name;
    private $last_name;
    private $email;
    private $password;
    private $preferred_calories;
    private $list_of_meals;
    private $meal_plan;
    private $ingredients_in_kitchen;
    
    public function __construct($fname, $lname, $email, $password, $calories){
        $this->first_name = $fname;
        $this->last_name = $lname;
        $this->email = $email;
        $this->password = $password;
        $this->preferred_calories = $calories;
    }
    
    public function addToList($meal){
        array_push($this->list_of_meals, $meal);
    }
    
    public function removeFromList($meal){
        if (($key = array_search($meal, $this->list_of_meals)) !== false) {
            unset($array[$key]);
        }
    }
    
    public function getList(){
        return $this->list_of_meals;
    }
}

?>