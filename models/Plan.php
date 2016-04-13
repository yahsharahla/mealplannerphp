<?php

class Plan {
    private $planId;
    private $name;
    private $no_of_weeks;
    
    public function __construct($name, $length){
        $this->planId = sha1($name . '' . (microtime(true)*1000));
        $this->name = $name;
        $this->no_of_weeks = $length;
    }
    
    public function getPlanId(){
        return $this->planId;
    }
    
    public function setPlanId($Id){
        $this->planId = $Id;
    }
}

?>