<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>

<body>
    <?php
        
        if (count($_POST) > 1 && count($_POST) < 5)
        {
            
            if(!isset($_SESSION))
            {
                session_start();
            }

            $con=mysqli_connect("localhost","root","","library");
            // Check connection
            
            if (mysqli_connect_errno())
            {
                echo "Failed to connect to MySQL DB: " . mysqli_connect_error();
            }

            array_pop ($_POST);
            foreach ($_POST as $key => $value)
            {
                $sql="INSERT INTO reservedbooks (book, user)
                 VALUES
                 ('$value','$_SESSION[userID]')";
                $mark_reserved="UPDATE book SET reserved = 'Y' WHERE bookID = $value";
                $check_reserved="SELECT * FROM book WHERE bookID = '$value' AND reserved = 'Y' ";
                $check_user="SELECT * FROM reservedbooks WHERE user = '$_SESSION[userID]' ";
                $result = mysqli_query($con,$check_user) or die ("Error in query: $query " . mysql_error());
                $row = mysqli_fetch_array($result);
                $num_results = mysqli_num_rows($result);
                
                if ($num_results >= 3)
                {
                    echo '<script type="text/javascript"> alert(\'You have reach the maximum amount of books you are allowed to have reserved at one time\'); </script>';
                    echo '<script type="text/javascript">location.href = \'browse.php\';</script>';
                    exit;
                }

                $result = mysqli_query($con,$check_reserved) or die ("Error in query: $query " . mysql_error());
                $row = mysqli_fetch_array($result);
                $num_results = mysqli_num_rows($result);
                
                if ($num_results > 0)
                {
                    echo '<script type="text/javascript"> alert(\'A book you have selected is already reserved :(\'); </script>';
                    echo '<script type="text/javascript">location.href = \'browse.php\';</script>';
                    exit;
                }

                mysqli_query($con,$sql);
                mysqli_query($con,$mark_reserved);
            }

            
            if (mysqli_connect_errno())
            {
                echo "Failed to connect to MySQL DB: " . mysqli_connect_error();
                echo '<script type="text/javascript"> alert(\'Database Connection Error\'); </script>';
                echo '<script type="text/javascript">location.href = \'browse.php\';</script>';
                exit;
            }
            else
            {
                echo '<script type="text/javascript"> alert(\'Your reservation was sucessful\'); </script>';
                echo '<script type="text/javascript">location.href = \'viewreserved.php\';</script>';
            }

        }
        else
        {
            echo '<script type="text/javascript"> alert(\'You have selected 0 or more than 3 books. This is not allowed,please try again\'); </script>';
            echo '<script type="text/javascript">location.href = \'browse.php\';</script>';
        }

    ?>
</body>
</html>