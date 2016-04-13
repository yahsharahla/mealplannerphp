<?php

class User {
    private $userId;
    private $account;
    
    public function __construct($userId){
        $this->userId = $userId;
        $this->account = null;
    }
    
    public function create_meal(){
        //TODO: Implement here
    }
}

?>