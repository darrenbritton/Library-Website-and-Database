<?php
	include('conn.php');
	session_start();
	
	if (!isset($_SESSION['userID']))
	{
		echo '<script type="text/javascript">location.href = \'login.php\';</script>';
	}
	else
	{
		
		if(!isset($_SESSION))
		{
			session_start();
		}

		session_destroy();
		echo '<script type="text/javascript">location.href = \'index.php\';</script>';
		echo '<script type="text/javascript"> alert(\'You have been sucesfully logged out\'); </script>';
	}

?>