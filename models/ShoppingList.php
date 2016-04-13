<?php

class ShoppingList {
    private $listId;
    private $total_cost;
    private $list_of_items;
    
    public function __construct(){
        $this->listId = sha1($name . '' . (microtime(true)*1000));
    }
    
    private function calculateCost(){
        $total = 0;
        foreach($this->list_of_items as $item){
            $price = $item->getPrice();
            $quantity = $item->getQuanity();
            $total .= $quantity*price;
        }
        $this->total_cost = $total;
    }
    
    public function getTotal(){
        $this->calculateCost();
        return $this->total_cost;
    }
    
    public function addToList($item){
        array_push($this->list_of_items, $item);
    }
    
    public function removeFromList($item){
        if (($key = array_search($item, $this->list_of_items)) !== false) {
            unset($array[$key]);
        }
    }
    
    public function getList(){
        return $this->list_of_items;
    }
    
    public function getListId(){
        return $this->listId;
    }
    
    public function setListId($Id){
        $this->listId = $Id;
    }
    
}

?>
