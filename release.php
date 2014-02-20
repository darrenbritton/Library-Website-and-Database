<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>

<body>
    <?php
        
        if (count($_POST) > 1)
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
                $sql="DELETE FROM reservedbooks WHERE reservationID = $value";
                mysqli_query($con,$sql) or die ("Error in query: $query " . mysql_error());
            }

            
            if (mysqli_connect_errno())
            {
                echo "Failed to connect to MySQL DB: " . mysqli_connect_error();
                echo '<script type="text/javascript"> alert(\'Database Connection Error\'); </script>';
                echo '<script type="text/javascript">location.href = \'viewreserved.php\';</script>';
                exit;
            }
            else
            {
                echo '<script type="text/javascript"> alert(\'You have sucessfully released a book/books\'); </script>';
                echo '<script type="text/javascript">location.href = \'viewreserved.php\';</script>';
            }

        }
        else
        {
            echo '<script type="text/javascript"> alert(\'You have selected not selected a book to release,please try again\'); </script>';
            echo '<script type="text/javascript">location.href = \'viewreserved.php\';</script>';
        }

    ?>
</body>
</html>