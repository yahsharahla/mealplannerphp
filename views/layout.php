<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Cheffinz</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
      <!-- Latest jQuery form server -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="static/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="static/css/style.css">
    <link rel="stylesheet" href="static/css/style1.css">
    <link rel="stylesheet" href="static/css/responsive.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://dl.dropbox.com/s/l9f05kxmtvcqr1b/font-awesome.min.css">
    <link rel="stylesheet" href="https://dl.dropbox.com/s/4zc2utw8dkq0qjm/fonts.css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
    <script src="https://dl.dropbox.com/s/yoq4hyd27a0s0kr/bootstrap.min.js"></script>
    <script src="static/js/view.js"></script>
    <!--script src="<!?php echo 'http://' . $_SERVER['SERVER_NAME'] . '/cxc/phaseshift/js/jquery.dropotron.min.js'?>"></script>
    <script src="<!?php echo 'http://' . $_SERVER['SERVER_NAME'] . '/cxc/phaseshift/js/skel.min.js'?>"></script>
    <script src="<!?php echo 'http://' . $_SERVER['SERVER_NAME'] . '/cxc/phaseshift/js/skel-layers.min.js'?>"></script>
    <script src="<!?php echo 'http://' . $_SERVER['SERVER_NAME'] . '/cxc/phaseshift/js/init.js'?>"></script>
    <script src="<!?php echo 'http://' . $_SERVER['SERVER_NAME'] . '/cxc/index.js' ?>"></script-->
    <noscript>
        <link rel="stylesheet" href="static/css/skel.css'?>">
        <link rel="stylesheet" href="static/css/style.css'?>">
        <link rel="stylesheet" href="static/css/style-wide.css'?>">
    </noscript>   
</head>
<body>
<div id="body">
    
            <!-- Top Menu -->
         <div class="header-area">
             
             <!-- == CAROUSEL START ==-->
             
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img  src="static/images/cheffings.jpg" alt="cheffings" class = "img-responsive" >
      <div class="carousel-caption">
        <h3>Add Meals</h3>
        <p>Its possible for you to add meals according to your weekly schedule</p>
      </div>
    </div>
    <div class="item">
      <img src="static/images/cheffings1.jpg"  alt="cheffings" class = "img-responsive">
      <div class="carousel-caption">
         <h3>Add Meals</h3>
        <p>Its possible for you to add meals according to your weekly schedule</p>
      </div>    
    </div>
    <div class="item">
      <img src="static/images/cheffings2.gif"  alt="cheffings" class = "img-responsive">
      <div class="carousel-caption">
         <h3>Add Meals</h3>
        <p>Its possible for you to add meals according to your weekly schedule</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
             
             <!-- == CAROUSEL END ==-->
             
            <div class="container">
            <div class="row">
                <div>
                    <div class="">
                         <ul class="nav navbar-nav pull-left">
                             <div class="logo">
                             <li class="active"><h1><a href="#"><span>Cheffinz<sup>&trade;</sup></span></a></h1></li>
                                 </div>
                             <li><a href="?controller=pages&action=index">Home</a></li>
                             <li><a href="?controller=pages&action=about">How it Works</a></li>
                             <li><a href="#">Create Meal</a></li>
                             <li><a href="?controller=pages&action=user">Login</a></li>
                        </ul>
                        <?php 
                            if (isset($_SESSION['user'])){
                                $user = $_SESSION['user'];
                                    $name = $user->getAccount->getFirstName + ' ' $user->getAccount->getLastName
                                echo '<ul class="nav navbar-nav pull-right">
                                <li class="active">Welcome $name</li>
                                </ul>'
                            }
                        ?>
                    </div>
               </div>
                

                <!-- End Top Menu -->
            </div>
        </div>
    </div>
   
        

        <!-- === END HEADER === -->
    
    <!-- === CONTENT === -->
    <hr>

    <!--h1 style="text-align:center;">Dynamic content here</h1-->
    <div class="container">
    <?php
        require_once('routes.php');
    ?>
    </div>

    <hr>
</div>
    <!-- === END CONTENT === -->
    
    <!-- === BEGIN FOOTER === -->
    
    <!--div class="footer-top-area">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <!--div class="footer-about-us">
                        <h2><span>Bowla's Motoring</span> world</h2>
                        <p>44-46 Studio One Blvd,<br />
                        Kingston 5,<br />
                        Jamaica,<br />
                        876-906-7848<br/>
                        Email: <a href="mailto:bowlasmotoringworld@yahoo.com">bowlasmotoringworld@yahoo.com</a><br />
                        Website: <a href="index.php">www.bowlamotoringworld.com</a></p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                    <h1>Footer <br>Area<br> 1</h1>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <!--div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order history</a></li>
                            <li><a href="?controller=pages&action=contact">Contact</a></li>
                            <li><a href="?controller=pages&action=index">Front page</a></li>
                            <li><a href="?controller=pages&action=about">About Us</a></li>

                        </ul>                        
                    </div>
                    <h1>Footer <br>Area<br> 2</h1>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <!--div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="#">Tires</a></li>
                            <li><a href="#">Transmission</a></li>
                            <li><a href="#">Engines</a></li>
                            <li><a href="#">Brakes</a></li>
                            <li><a href="#">Accessories</a></li>
                        </ul>                        
                    </div>
                    <h1>Footer <br>Area<br> 3</h1>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <!--div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                             
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="" method="post">
                                <input type="email" placeholder="Type your email" name="newsEmail" id="newsEmail" >
                                <input type="submit" value="Subscribe" name="Subscribe">
                            </form>
                        </div>
                    </div>
                    <h1>Footer <br>Area<br> 4</h1>
                </div>
            </div>
        </div>
    </div> 
    
    <!-- End footer area -->
   
    <!-- jQuery -->
    
    
    <!-- Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>