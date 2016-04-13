<?php

class User {
    private $userId;
    private $account;
    
    public function __construct($userId){
        $this->userId = $userId;
        $this->account = null;
    }
    
    public function getUserId(){
        return $this->userId;
    }
    
    public function setAccount($account){
        $this->account = $account;
    }
    
    public function getAccount(){
        return $this->account;
    }
}

?>