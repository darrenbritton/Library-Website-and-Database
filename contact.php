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
            <h2>Contact Information</h2>

            <div class="col col_2">
                <h4>Send us a message now!</h4>

                <p>If you have any questions please use the form below to send
                us an email and we will get back to you asap.</p>

                <div id="form">
                    <form action="#" id="contact" method="post" name="contact">
                        <label for="author">Name:</label> 
                        <input class="required input_field" id="author" name="author" type="text">

                        <div class="cleaner h10"></div>
                        <label for="email">Email:</label> <input class="validate-email required input_field" id="email" name="email" type="text">

                        <div class="cleaner h10"></div>
                        <label for="subject">Subject:</label>
                        <input class="validate-subject required input_field" id="subject" name="subject" type="text">

                        <div class="cleaner h10"></div>
                        <label for="text">Message:</label> 
                        <textarea class="required" cols="0" id="text" name="text" rows="0"></textarea>

                        <div class="cleaner h10"></div>
                        <input class="submit_btn float_l" id="submit" name="submit" type="submit" value="Send">
                        <input class="submit_btn float_r" id="reset" name="reset" type="reset" value="Reset">
                    </form>
                </div>
            </div>

            <div class="col col_2 no_margin_righ">
                <h4>Our Location</h4><iframe frameborder="0" height="300"
                marginheight="0" marginwidth="0" scrolling="no" src=
                "http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;
                geocode=&amp;q=Central+Park,+New+York,+NY,+USA&amp;aq=0&amp;sll=14.093957,1.318359&amp;
                sspn=69.699334,135.263672&amp;vpsrc=6&amp;ie=UTF8&amp;hq=Central+Park,+New+York,+NY,+USA&amp;
                ll=40.778265,-73.96988&amp;spn=0.033797,0.06403&amp;t=m&amp;output=embed"
                width="380"></iframe>

                <div class="cleaner h30"></div>

                <h4>Mailing Address</h4>

                <h6><strong>Library</strong></h6>123 Library Road,<br>
                Library City<br>
                Library<br>
                <br>
                <strong>Phone:</strong> 8675-309<br>
                <strong>Email:</strong> <a href=
                "mailto:info@yoursite.com">queries@library.com</a>
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