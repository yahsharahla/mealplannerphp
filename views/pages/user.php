	<!-- === BEGIN CONTENT === -->
		<div id="user-login">
            <h1 class="heading">Login to your account</h1>
			<div class="container"> 
				<div class="row margin-vert-30">
                    
					<!-- Login Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                        
						<form class="login-page" role="form" method="post" action="?controller=control&action=login"  autocomplete="off">
							<div class="login-header margin-bottom-30">
								
                                <form id="login-form-wrap" class="login collapse" method="post">

                                    <p class="form-row form-row-first">
                                        <table>
                                        <tr><td><label for="email">Email Address <span class="required">*</span>
                                            </label></td><td class="in">
                                        <input type="email" id="username"  placeholder="someone@example.com"  name="email" class="input-text">
                                            </p></td></tr>
                                    <tr><td><p class="form-row form-row-last">
                                        <label for="password">Password <span class="required">*</span>
                                            </label></td><td class="in">
                                        <input type="password" id="password" name="password" class="input-text" placeholder="Password">
                                </p></td></tr><tr><td colspan="2">
                                    <div class="clear"></div>


                                    <p class="form-row">
                                        <input type="submit" class="btn" value="Login" name="submit">
                        </p></td></tr>
                                    </table>
                                    <p class="lost_password">
                                        <a href="?controller=pages&action=reset">Lost your password?</a>
                                    </p>

                                    <div class="clear"></div>
                                </form>
                            </div>
                        </form>
						<p id="reg"> Create an Account </p>
					</div>
					<!-- End Login Box -->
				</div>
			</div>
		</div>
<div id="user-register">
    <h1 class="heading">Register</h1>
    <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
    <form class="login-page" role="form" method="post" action="?controller=control&action=register"  autocomplete="off">
       <p class="form-row form-row-first">
        <table>
        <tr><td><label for="first_name">First Name <span class="required">*</span>
            </label></td><td class="in">
        <input type="text" id="fname"  placeholder="Enter First Name"  name="first_name" class="input-text">
        </p></td></tr>
        <tr><td><label for="last_name">Last Name <span class="required">*</span>
            </label></td><td class="in">
        <input type="text" id="lname"  placeholder="Enter Surname"  name="last_name" class="input-text">
        </p></td></tr>
        <tr><td><label for="email">Email Address <span class="required">*</span>
            </label></td><td class="in">
        <input type="email" id="username"  placeholder="someone@example.com"  name="email" class="input-text">
        </p></td></tr>
        <tr><td><label for="calories">Preferred Calories <span class="required">*</span>
            </label></td><td class="in">
        <input type="number" id="calories"  placeholder="Enter daily calorie preference"  name="calories" class="input-number">
        </p></td></tr>
        <tr><td><p class="form-row form-row-last">
        <label for="password">Password <span class="required">*</span>
        </label></td><td class="in">
        <input type="password" id="password" name="password" class="input-text" placeholder="Password">
        </p></td></tr>
        <tr><td colspan="2">
        <div class="clear"></div>
        <p class="form-row">
        <input type="submit" class="btn" value="Register" name="submit">
        </p></td></tr>
        </table> 
    </form>
    </div>
</div>

		<!-- === END CONTENT === -->