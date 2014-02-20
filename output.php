<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <table id="box-table">
    <tr>
      <td colspan="2">
        <center>
          <h2><font face="Tahoma">Browse Our Books</font></h2>
        </center>
      </td>
    </tr>

    <tr>
      <td>
        <table id="hover">
          <tr>
            
            <td><strong>Book ID</strong></td>

            <td><strong>ISBN</strong></td>

            <td><strong>Book Title</strong></td>

            <td><strong>Author</strong></td>

            <td><strong>Edition</strong></td>

            <td><strong>Year</strong></td>

            <td><strong>Genre</strong></td>

            <td><strong>Reserved</strong></td>

            <td><strong>Reserve</strong></td>

          </tr>
          <form name="input" action="reserve.php" method="post">
            <?php
                
                include 'sanitizeString.php';

                $viewreserved;

                $search = "bookID > 0";
                
                if (count($_POST) > 1)
                {
                    $searchstring = sanitize_string($_POST['searchstring'],2,100);

                    if ($searchstring == FALSE)
                    {
                      echo '<script type="text/javascript"> alert(\'your search is invalid, try again\'); </script>';
                      echo '<script type="text/javascript">location.href = \'index.php\';</script>';
                      die();
                    }

                    $search = "$_POST[search]";
                    $search = $search . " LIKE '";
                    $search = $search . "$searchstring";
                    $search = $search . "'";
                }

                $con=mysqli_connect("localhost","root","","library");
                // Check connection
                
                if (mysqli_connect_errno())
                {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }

                $result = mysqli_query($con,"SELECT * FROM book WHERE $search");
                $i = 1;
                while($row = mysqli_fetch_array($result))
                {
                    $mark_reserved="UPDATE book SET reserved = 'N' WHERE not exists ( SELECT * FROM reservedbooks WHERE book = $row[bookID] ) AND bookID = $row[bookID] ";
                    
                    if (!mysqli_query($con,$mark_reserved))
                    {
                        die('Error: ' . mysqli_error($con));
                    }

                    echo "<tr>";
                    echo "<td>" . $row['bookID'] . "</td>";
                    echo "<td>" . $row['isbn'] . "</td>";
                    echo "<td>" . $row['booktitle'] . "</td>";
                    echo "<td>" . $row['author'] . "</td>";
                    echo "<td>" . $row['edition'] . "</td>";
                    echo "<td>" . $row['year'] . "</td>";
                    echo "<td>" . $row['category'] . "</td>";
                    echo "<td>" . $row['reserved'] . "</td>";
                    echo '<td><input type="checkbox" name="bookID' . $i . '" value=' . $row['bookID'] . '></td>';
                    echo "</tr>";
                    $i++;
                }

                mysqli_close($con);
            ?>
        </table>
      </td>
    </tr>
   	<tr>
	   <td>
        <div id="form">
            <div id="center_form">
	  	        <input type="submit" value="Reserve" id="submit" name="submit" class="submit_btn float_r">
                <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_l">
            </div>
        </div>
	   </td>
    </tr>
   </form>
  </table>
</body>
</html>
