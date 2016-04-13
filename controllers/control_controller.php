<?php

    class ControlController {
        public function login(){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $hash = sha1($password);
            //$time = round(microtime(true) * 1000);
            //$user = new User($time);
            $sql = "select * from account where email='$email' and password_hash='$hash';";
            $database = new Database('localhost', 'meal_planner', 'root', '');
            if (gettype($database->get_db()) != 'int'){
                $result = $database->query($sql);
                $result = count($result);
                if ($result > 0) {
                    $sql = "select * from account natural join shipping_address
                    natural join address where username='$username';";
                    $result = $database->query($sql);
                    $result = $result[0];
                    $address = new Address($result[7], $result[8], $result[9], $result[10]);
                    $account = new Account($username, $result[2], $password, $result[4],
                                          $result[5], $result[6], $address);

                    //Check for existing payment method
                    $sql = "select * from account natural join account_payment 
                    natural join address where username='$username';";
                    $result = $database->query($sql);
                    if(count($result) > 0){
                        $result = $result[0];
                        $paymentID = $result[1];
                        $methods = array('bank_account', 'credit_card', 'paypal');
                        for($i=0; $i<count($methods); $i++){
                            $sql = "select * from " . $methods[i] . " where payment_id='$paymentID';";
                            $result = $database->query($sql);
                            if(count($result) > 0){
                                $result = $result[0];
                                switch($methods[i]){
                                    case 'bank_account':
                                        $sql = "select * from bank_account natural join ba_billing_address 
                                        natural join address where payment_id='$paymentID';";
                                        $result = $database->query($sql);
                                        $result = $result[0];
                                        $street = $result[5];
                                        $city = $result[6];
                                        $parish = $result[7];
                                        $postal = $result[8];
                                        $address = new Address($street, $city, $parish, $postal);
                                        $payment = new BankAccount($result[4], $result[2], $result[3], $address);
                                        $account->setPaymentMethod($payment);
                                        $_SESSION['payment'] = 'yes';
                                        $_SESSION['paymenttype'] = 'ba';
                                        break;
                                    case 'credit_card':
                                        $sql = "select * from credit_card natural join cc_billing_address 
                                        natural join address where payment_id='$paymentID';";
                                        $result = $database->query($sql);
                                        $result = $result[0];
                                        $ccnumber = $result[1];
                                        $cardholder = $result[2];
                                        $street = $result[3];
                                        $city = $result[4];
                                        $parish = $result[5];
                                        $postal = $result[6];
                                        $address = new Address($street, $city, $parish, $postal);
                                        $payment = new CreditCard($cardholder, $ccnumber, '', '', $address);
                                        $account->setPaymentMethod($payment);
                                        $_SESSION['payment'] = 'yes';
                                        $_SESSION['paymenttype'] = 'cc';
                                        break;
                                    case 'paypal':
                                        $sql = "select * from paypal where payment_id='$paymentID';";
                                        $result = $database->query($sql);
                                        $result = $result[0];
                                        $email = $result[0];
                                        $password = $result[1];
                                        $payment = new PayPal($email, $password);
                                        $account->setPaymentMethod($payment);
                                        $_SESSION['payment'] = 'yes';
                                        $_SESSION['paymenttype'] = 'pp';
                                        break;
                                }
                                break;
                            }
                        }

                    }
                    $_SESSION['account'] = $account;
                    $_SESSION['username'] = $account->getUsername();
                    $_SESSION['email'] = $account->getEmail();
                    $_SESSION['phonenumber'] = $account->getPhoneNumber();
                    $_SESSION['firstname'] = $account->getFirstName();
                    $_SESSION['lastname'] = $account->getLastName();
                    $_SESSION['streetaddress'] = $account->getShippingAddress()->getStreetAddress();
                    $_SESSION['city'] = $account->getShippingAddress()->getCity();
                    $_SESSION['parish'] = $account->getShippingAddress()->getParish();
                    $_SESSION['postalcode'] = $account->getShippingAddress()->getPostalCode();
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
        
        
    }
?>