<?php

    class PagesController {
        public function index() {
            require_once('views/pages/index.php');
        }
        
        
        public function error(){
            require_once('views/pages/404.php');
        }
        
        
        public function about(){
            require_once('views/pages/about.php');
        }
                                       
        public function addmeal(){
            require_once('views/pages/addmeal.php');
        }
                                       
        public function foodspace(){
            require_once('views/pages/foodspace.php');
        }
                                       
        public function generate(){
            require_once('views/pages/generate.php');
        }
                                       
        public function groceries(){
            require_once('views/pages/groceries.php');
        }
                                       
        public function user(){
            require_once('views/pages/user.php');
        }
                                       
            
                                       
                                       
    }
?>