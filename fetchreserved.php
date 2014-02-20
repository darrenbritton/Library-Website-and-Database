<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <table id="box-table">
    <tr>
      <td colspan="2">
        <center>
          <h2><font face="Tahoma">Your Reserved Books</font></h2>
        </center>
      </td>
    </tr>

    <tr>
      <td>
        <table id="hover2">
          <tr>

            <td><strong>Reservation ID</strong></td>

            <td><strong>Book</strong></td>

            <td><strong>Reservation Date</strong></td>

          </tr>
            <form name="input" action="release.php" method="post">
            <?php
                $con=mysqli_connect("localhost","root","","library");
                // Check connection
                
                if (mysqli_connect_errno())
                {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }

                $i = 1;

                $result = mysqli_query($con,"SELECT reservationID, booktitle, reservationdate FROM reservedbooks, book WHERE user = $_SESSION[userID] AND book = bookID");
                
                while($row = mysqli_fetch_array($result))
                {
                    echo "<tr>";
                    echo "<td>" . $row['reservationID'] . "</td>";
                    echo "<td>" . $row['booktitle'] . "</td>";
                    echo "<td>" . $row['reservationdate'] . "</td>";
                    echo '<td><input type="checkbox" name="release' . $i . '" value=' . $row['reservationID'] . '></td>';
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
            <input type="submit" value="Release" id="submit" name="submit" class="submit_btn float_r">
            <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_l">
          </div>
        </div>
       </td>
    </tr>
   </form>
  </table>
</body>
</html>