<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>

<body>
  <?php

    include 'sanitizeString.php';

    $con=mysqli_connect("localhost","root","","library");
    // Check connection
    
    if (mysqli_connect_errno())
    {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

    $username = sanitize_string($_POST['username'],2,44);
    if ($username == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your username is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $password = sanitize_string($_POST['password'],2,44);
    if ($password == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your password is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $firstname = sanitize_string($_POST['firstname'],2,44);
    if ($firstname == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your first name is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $surname = sanitize_string($_POST['surname'],2,44);
    if ($surname == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your surname is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $addressl1 = sanitize_string($_POST['addressl1'],2,100);
    if ($addressl1 == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your address line 1 is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $addressl2 = sanitize_string($_POST['addressl2'],2,100);
    if ($addressl2 == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your address line 2 is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $city = sanitize_string($_POST['city'],2,32);
    if ($city == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your city is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $telephone = sanitize_string($_POST['telephone'],7,14);
        if ($telephone == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your telephone number is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $mobile = sanitize_string($_POST['mobile'],10,14);
        if ($mobile == FALSE)
    {
      echo '<script type="text/javascript"> alert(\'your mobile number is invalid, try again\'); </script>';
      echo '<script type="text/javascript">location.href = \'register.php\';</script>';
      die();
    }

    $check_user="SELECT * FROM user WHERE '$username' = username";
    $result = mysqli_query($con,$check_user) or die ("Error in query: $query " . mysql_error());
    $row = mysqli_fetch_array($result);
    $num_results = mysqli_num_rows($result);
    
    if ($num_results > 0 )
    {
        echo '<script type="text/javascript"> alert(\'This username has already been taken, please choose another\'); </script>';
        echo '<script type="text/javascript">location.href = \'register.php\';</script>';
        exit;
    }

    $check_user="SELECT * FROM user WHERE '$firstname' = firstname AND '$surname' = surname AND '$addressl1' = addressl1";
    $result = mysqli_query($con,$check_user) or die ("Error in query: $query " . mysql_error());
    $row = mysqli_fetch_array($result);
    $num_results = mysqli_num_rows($result);
    
    if ($num_results > 0 )
    {
        echo '<script type="text/javascript"> alert(\'A user with these details has already been registered, if you cannot remember your password please contact us for assistance\'); </script>';
        echo '<script type="text/javascript">location.href = \'register.php\';</script>';
        exit;
    }

    $sql="INSERT INTO User (username, password, firstname, surname, addressl1, addressl2, city, telephone, mobile)
       VALUES
       ('$username','$password','$firstname','$surname','$addressl1','$addressl2','$city','$telephone','$mobile')";
    
    mysqli_query($con,$sql)) or die('Error: ' . mysqli_error($con));

    echo '<script type="text/javascript">location.href = \'index.php\';</script>';
    echo '<script type="text/javascript"> alert(\'your account has been sucessfully registered\'); </script>';

    mysqli_close($con);

  ?>
</body>
</html>