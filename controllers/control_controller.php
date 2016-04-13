<?php

    class ControlController {
        
        public function login(){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $hash = sha1($password);
            $database = new Database('localhost', 'meal_planner', 'root', '');
            if (gettype($database->get_db()) != 'int'){
                $sql = "select * from user natural join create_account natural join
                account where email='$email' and password_hash='$hash';";
                $result = $database->query($sql);
                if (count($result) > 0) {
                    $result = $result[0];
                    $account = new Account($result[3]. $result[4], $email, $password, $result[0]);
                    $user = new User($result[1]);
                    $user->setAccount($account);
                    $_SESSION['user'] = $user;
                    echo '<script>window.location.href = "?controller=pages&action=index";</script>';
                } else {
                    $_SESSION['incorrect'] = 'yes';
                    echo '<script>alert(\'Incorrect username or password\');
                    window.location.href = "?controller=pages&action=user";</script>';
                }
            } else {
                 echo '<script>alert(\'Unknown error occurred\');
                    window.location.href = "?controller=pages&action=user";</script>';
            }
    }
        
        public function logout(){
            //TODO: Implement here
            if (isset($_SESSION['user'])){
                unset($_SESSION['user']);
                echo '<script>window.location.href = "?controller=pages&action=index";</script>';
            }
        }
        
        public function createaccount(){
            //TODO: Implement here
            $email = $_POST['email'];
            $first_name = $_POST['fname'];
            $last_name = $_POST['lname'];
            $password = $_POST['password'];
            $preferred_calories = $_POST['preffered'];
            $hash = sha1($password);
            $database = new Database('localhost', 'meal_planner', 'root', '');
            $user = $_SESSION['anonuser'];
            if (gettype($database->get_db()) != 'int'){
                $database->beginTransaction();
                $userId = $user->getUserId();
                $sql = "insert into user values('$userId');";
                $result = database->update($sql);
                if ($result < 0){
                    $database->rollbackUpdate();
                    echo '<script>alert(\'Unknown error occurred\');
                    window.location.href = "?controller=pages&action=user";</script>';
                    return;
                }
                $sql = "insert into account values($preferred_calories, '$first_name, 
                '$last_name', '$email', '$hash');";
                $result = database->update($sql);
                if ($result < 0){
                    $database->rollbackUpdate();
                    echo '<script>alert(\'Unknown error occurred\');
                    window.location.href = "?controller=pages&action=user";</script>';
                    return;
                }
                $sql = "insert into create_account values('$userId', '$email');";
                $result = database->update($sql);
                if ($result < 0){
                    $database->rollbackUpdate();
                    echo '<script>alert(\'Unknown error occurred\');
                    window.location.href = "?controller=pages&action=user";</script>';
                    return;
                } else {
                    $database->commitChanges();
                }
                $account = new Account($first_name, $last_name, $email, $password, $preferred_calories);
                $user->setAccount($account);
                unset($_SESSION['anonuser']);
                $_SESSION['user'] = $user;
                echo '<script>window.location.href = "?controller=pages&action=index";</script>';
            } else {
                echo '<script>alert(\'Unknown error occurred\');
                    window.location.href = "?controller=pages&action=user";</script>';
            }
        }
        
        public function createmeal(){
            //TODO: Implement here
            $list_of_ingredients = array();
            for ($i=0; i<){}
            $name = $_POST['name'];
            $type = $_POST['type'];
            $calories = $_POST['calories'];
        }
        
        public function createplan(){
            //TODO: Implement here
            
        }
        
        public function randommeal(){
            //TODO: Implement here
            $random_number = rand(0,200);
        }
        
        
        
        
    }
?>