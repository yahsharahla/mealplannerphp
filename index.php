<?php
  require_once('models/database.php');
  require_once ('models/user.php');
  require_once ('models/account.php');
  /*require_once ('models/shoppinglist.php');
  require_once ('models/meal.php');
require_once ('models/plan.php');
  require_once ('models/recipe.php');
require_once ('models/fooditem.php');*/
  session_start();
  if (isset($_GET['controller']) && isset($_GET['action'])) {
    $controller = $_GET['controller'];
    $action     = $_GET['action'];
  } else {
    $controller = 'pages';
    $action     = 'index';
  }

  require_once('views/layout.php');

?>