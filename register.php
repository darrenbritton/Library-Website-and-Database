<!DOCTYPE html>
<html>
<head>
	<?php include 'header.html'; ?>
    <title></title>
</head>

<body>
    <div id="main_top"></div>

    <div id="main_wrapper">
        <div id="main">
        	<div id="form">
            	<div id="center_form">
                	<h2>Register</h2>

                	<p>Enter your details below to register.<br>
                	This will allow you to reserve books</p>

					<form action="insert.php" method="post">	
						<label>Username</label> <input type="text" name="username" class="required input_field" />
						<div class="cleaner h10"></div>
						
						<label>Password</label> <input type="password" name="password" class="required input_field" />
						<div class="cleaner h10"></div>
						
						<label>First Name</label> <input type="text" name="firstname" class="required input_field" />
						<div class="cleaner h10"></div>
						
						<label>Surname</label> <input type="text" name="surname"  class="required input_field" />
						<div class="cleaner h10"></div>

						<label>Address</label> <input type="text" name="addressl1" class="required input_field" />
						<div class="cleaner h10"></div>
						
						<label>Address Line 2</label> <input type="text" name="addressl2"  class="required input_field" />
						<div class="cleaner h10"></div>
						
						<label>City</label> <input type="text" name="city" class="required input_field" />
						<div class="cleaner h10"></div>
						
						<label>Telephone</label> <input type="text" name="telephone" class="required input_field" />
						<div class="cleaner h10"></div>
														
						<label for="email">Mobile</label> <input type="text" name="mobile" class="required input_field" />
						<div class="cleaner h10"></div>
						
						<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
						<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />

					</form>
				</div>
			</div>
		</div>
	</div>
        <div class="cleaner"></div>
    </div> <!-- end of main -->
	</div> <!-- end of main wrapper -->
<div id="footer">
    <div class="center copyright">
		<p>Designed by <a>Darren Britton</a></p>
	</div>
	
    <div class="cleaner"></div>
</div> <!-- end of footer -->


</body>
</html>