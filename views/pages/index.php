<?php
/*Create anonymous user on home page visit
  and store it in session variable*/
$time = round(microtime(true) * 1000);
$user = new User($time);
$_SESSION['anonuser'] = $user;

?>
<div class="block" style="text-align:center;">
    <h1 class="heading">Welcome to Cheffinz</h1>
    <p>
        Cheffinz is a web application that aids in meal preparation and weekly meal plans
    </p>
</div>