<?php

class User {
    private $userId;
    private $account;
    
    public function __construct($fname, $lname, $email, $password){
        $this->account = Account($fname, $lname, $email, $password);
    }
    
    public function create_meal(){
        //TODO: Implement here
    }
}

?>