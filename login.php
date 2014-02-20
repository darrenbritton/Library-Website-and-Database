<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>

<body>
    <?php include 'header.html'; ?>
    
    <div id="main_top"></div>

    <div id="main_wrapper">
        <div id="main">
            <div id="form">
                <div id="center_form">
        			<form method="post" action="loginscript.php"> 
        				<label>Username</label><input type="text" name="username" class="required input_field"/>
        				<label>Password</label><input type="password" name="password" class="required input_field"/></br>
        			 	<input  type="submit" value="Login" id="submit" name="submit" class="submit_btn"/>
        			</form>
                </div>
            </div>
        </div><!-- end of main -->
    </div><!-- end of main wrapper -->

    <div id="footer">
        <div class="center copyright">
            <p>Designed by <a>Darren Britton</a></p>
        </div>

        <div class="cleaner"></div>
    </div><!-- end of footer -->
</body>
</html>