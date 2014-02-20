<?php
	mysql_select_db('library',mysql_connect('localhost','root',''));
	include 'sanitizeString.php';
	
	if (isset($_POST['username']) && isset($_POST['password']))
	{
	    $username = sanitize_string($_POST['username'],2,44);

	    if ($username == FALSE)
	    {
	      echo '<script type="text/javascript"> alert(\'your username is invalid, try again\'); </script>';
	      echo '<script type="text/javascript">location.href = \'login.php\';</script>';
	      die();
	    }

	    $password = sanitize_string($_POST['password'],2,44);

	    if ($password == FALSE)
	    {
	      echo '<script type="text/javascript"> alert(\'your password is invalid, try again\'); </script>';
	      echo '<script type="text/javascript">location.href = \'login.php\';</script>';
	      die();
	    }

		$result=mysql_query("select * from user where username='$username' and password='$password'")or die (mysql_error());
		$count=mysql_num_rows($result);
		$row=mysql_fetch_array($result);
		mysql_close();
		
		if ($count > 0)
		{
			
			if(!isset($_SESSION))
			{
				session_start();
			}

			$_SESSION['userID']=$row['userID'];
			echo '<script type="text/javascript">location.href = \'index.php\';</script>';
			echo '<script type="text/javascript"> alert(\'Login Sucessful\'); </script>';
		}
		else
		{
			echo '<script type="text/javascript">location.href = \'login.php\';</script>';
			echo '<script type="text/javascript"> alert(\'Login failed, try again\'); </script>';
		}

	}
	else
	{
		echo '<script type="text/javascript">location.href = \'login.php\';</script>';
		echo '<script type="text/javascript"> alert(\'You have not entered your username or password, try again\'); </script>';
	}

?>