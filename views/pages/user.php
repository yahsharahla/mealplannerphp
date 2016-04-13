	<!-- === BEGIN CONTENT === -->
		<div id="content" class="container">
			<div class="container">
				<div class="row margin-vert-30">
					<!-- Login Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<form class="login-page" role="form" method="post" action="?controller=control&action=login"  autocomplete="off">
							<div class="login-header margin-bottom-30">
								<h1>Login to your account</h1>
                                <form id="login-form-wrap" class="login collapse" method="post">

                                    <p class="form-row form-row-first">
                                        <label for="email">Email Address <span class="required">*</span>
                                        </label>
                                        <input type="email" id="username"  placeholder="someone@example.com"  name="email" class="input-text">
                                    </p>
                                    <p class="form-row form-row-last">
                                        <label for="password">Password <span class="required">*</span>
                                        </label>
                                        <input type="password" id="password" name="password" class="input-text" placeholder="Password">
                                    </p>
                                    <div class="clear"></div>


                                    <p class="form-row">
                                        <input type="submit" class="btn" value="Login" name="submit">
                                    </p>
                                    <p class="lost_password">
                                        <a href="?controller=pages&action=reset">Lost your password?</a>
                                    </p>

                                    <div class="clear"></div>
                                </form>
                            </div>
                        </form>
						<p><a href="?controller=pages&action=signup"> Create an Account </a></p>
					</div>
					<!-- End Login Box -->
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->