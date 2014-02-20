<?php include 'header.html'; ?>
<!DOCTYPE html>

<html>
<head>

    <script src="js/jquery.kwicks-1.5.1.pack.js" type="text/javascript"></script>
    <script type="text/javascript">
$().ready(function() {
        $('.slider').kwicks({
            max : 740,
            spacing : 1
        });
    });
    </script>

    <title></title>
</head>

<body>
    <div id="main_top"></div>

    <div id="main_wrapper">
        <div id="slider_wrapper">
            <ul class="slider horizontal">
                <li id="slide_1"><img src="images/slider/01.jpg" alt="Slider 01" /></li>
                <li id="slide_2"><img src="images/slider/02.jpg" alt="Slider 02" /></li>
                <li id="slide_3"><img src="images/slider/03.jpg" alt="Slider 03" /></li>
                <li id="slide_4"><img src="images/slider/04.jpg" alt="Slider 04" /></li>
                <li id="slide_5"><img src="images/slider/05.jpg" alt="Slider 05" /></li>
            </ul>
        </div>

        <div id="main">
            <div class="col col_3 hp_post">
                <img alt="Coffee" src="images/screen_addicted-to-coffee.png">

                <h4>Search</h4>

                <p>our extensive collection of titles and reserve your
                choice.</p>
            </div>

            <div class="col col_3 hp_post">
                <form action="browse.php" id="input" method="post" name="input">
                    <textarea class="textarea" cols="25" name="searchstring" rows="3"></textarea>
            </div>

            <div class="col col_3 hp_post no_margin_righ">
                <div id="form">
                  <input type="radio" name="search" value="isbn" class="radio">ISBN
                  <input type="radio" name="search" value="author" class="radio">Author<br>
                  <input type="radio" name="search" value="booktitle" class="radio">Title 
                  <input type="radio" name="search" value="year" class="radio">Year<br><br>
                  <input type="submit" value="Search" class="submit_btn float_l">
                </form>
                </div>
            </div>

            <div class="cleaner h40 hr"></div>

            <div class="col col_32">
            <h2>Library</h2>

            <p>Welcome to the our Library service. Here, you can search the
            online catalogues and websites of Irish public libraries, and
            reserve books via Inter-Library Loan.</p>

            <p>Using our service you can use the library's catalogue to reserve
            and request books locally. Only if you cannot get what you are
            looking for from your local library should you request an item
            using our service.</p>

            <div class="cleaner h10"></div><img alt="Image 01" class="image_bc"
            src="images/bookcase.png"></div>

            <div class="col col_3 no_margin_righ">
                <h3>Recent Additions</h3>

                <div class="rp_pp">
                    <img alt="Image 01" src="images/BookImage_01.jpg"> <a href=
                    "#">Dan Brown - The DaVinci Code.</a>

                    <p>Nov 9, 2013</p>

                    <div class="cleaner"></div>
                </div>

                <div class="rp_pp">
                    <img alt="Image 02" src="images/BookImage_02.jpg"> <a href=
                    "#">Maeve Binchy - Tara Road.</a>

                    <p>Nov 5, 2013</p>

                    <div class="cleaner"></div>
                </div>

                <div class="rp_pp">
                    <img alt="Image 03" src="images/BookImage_03.jpg"> <a href=
                    "#">George Bush - Decision Points.</a>

                    <p>Nov 2, 2013</p>

                    <div class="cleaner"></div>
                </div>
            </div>

            <div class="cleaner"></div>
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