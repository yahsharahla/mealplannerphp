<?php

class Account {
    private $first_name;
    private $last_name;
    private $email;
    private $password;
    
    public function __construct($fname, $lname, $email, $password){
        $this->first_name = $fname;
        $this->last_name = $lname;
        $this->email = $email;
        $this->password = $password;
    }
}

?>