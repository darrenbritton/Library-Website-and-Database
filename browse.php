<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>

<body>
    <?php
        include('conn.php');
        
        if(!isset($_SESSION))
        {
            session_start();
        }

        
        if (!isset($_SESSION['userID']))
        {
            echo '<script type="text/javascript"> alert(\'You must be logged to view this page\'); </script>';
            echo '<script type="text/javascript">location.href = \'login.php\';</script>';
        }
    ?> 

    <?php include 'header.html'; ?>
    
    <div id="main_top"></div>

    <div id="main_wrapper">
        <div id="main">
            <?php include 'output.php'; ?>
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