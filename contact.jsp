<%-- 
    Document   : contact.
    Created on : 20-Feb-2024, 9:02:22 am
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>saivijay art </title>


    <link rel="stylesheet" href="css/style.css">
 

    <!-- fontawsome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">


</head>

<body>


      <!-- header Section -->
<section id="header">

    <!-- logo -->
    <a href="#"> <img src="img/products/1706185796821.png" class="logo" width="50"> </a>

    <!-- navbar -->
    <div>
        <ul id="navbar">
            <li><a  href="index.jsp">Home</a></li>
            <li><a  href="shop.jsp?category=all">Shop</a></li>
            <li><a  href="about.jsp">About us</a></li>
            <li><a class="active" href="contact.jsp">Contact us</a></li>
            <li><a href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
             <li><a href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
        </ul>

    </div>

</section>



    <section id="page-header" class="contact-header">
        <h2>#let's_talk</h2>
        <p>Contact Us To More Details</p>
    </section>


    <section id="contact-details" class="section-p1">

        <div class="details">
            <span>GET IN TOUCH</span>
            <h2>Visit one of our locations or contact us today</h2>
            <h3>Head Office</h3>
            <ul>
                <li>
                    <i class="fal fa-map"></i>
                    <p>Kohaki Road,Rui,Shirdi,Maharashtra 423109</p>
                </li>
                <li>
                    <i class="fal fa-envelope"></i>
                    <p>hello@saivijayarts.com</p>
                </li>
                <li>
                    <i class="fal fa-phone-alt"></i>
                    <p>942-222-2327</p>
                </li>
                <li>
                    <i class="fal fa-clock"></i>
                    <p>Monday to Saturday 10 to 5:00</p>
                </li>
            </ul>
        </div>


        
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d480693.0202195257!2d74.7117383!3d19.7375483!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdc5b2219036a67%3A0x427cf07f426c917!2sSai%20Vijay%20Arts!5e0!3m2!1sen!2sin!4v1706624325518!5m2!1sen!2sin"
             width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>



    </section>




    <section id="form-details">
        <form action="">
            <span>LEAVE A MESSAGE</span>
            <h2>We Love To Hear From You</h2>
            <input type="text" placeholder="Your name">
            <input type="text" placeholder="E-mail">
            <input type="text" placeholder="Subject">
            <textarea name="message" id="message" cols="30" rows="10" placeholder="Your Message"></textarea> 
            <button type="submit" class="normal">Submit</button>
        </form>
    </section>




      
        <!-- footer Section -->
        <footer class="section-p1">
            <!-- col-1 -->
            <div class="col">
                <img class="logo" src="img/products/1706185796821.png" alt="">

            </div>
            <div class="col">
                <h4>Contact</h4>

                <p><strong>Address:</strong> Rui,Shirdi-423109</p>

                <p><strong>Phone:</strong> +91 942-222-2327</p>

                <p><strong>Hours:</strong> 10:00-18:00, Mon-Sat</p>

                <div class="follow">
                    <h4>Follow us</h4>
                    <div class="icon">

                        <a href="https://www.instagram.com/saivijayarts?utm_source=ig_web_button_share_sheet&igshid=ZDNlZDc0MzIxNw==">
                            <i class="fab fa-instagram instagram-icon"></i> </a>

                        <a href="https://www.facebook.com/saivijayarts?mibextid=ZbWKwL">
                            <i class="fab fa-facebook facebook-icon"></i></a>

<!--                        <a href="https://saivijayarts.com/">
                            <i class="fab fa-google google-icon"></i></a>-->

                        <a href="https://www.youtube.com/@Saivijayarts">
                            <i class="fab fa-youtube youtube-icon"></i></a>             

                    </div>
                </div>
            </div>



            <!-- col-2 -->
            <div class="col">
                <h4>About</h4>

                <a href="about.jsp">About us</a>
                <a href="Privacypollicy.jsp">Delivery Information</a>
                <a href="Privacypollicy.jsp">Privacy pollicy</a>
                <a href="Privacypollicy.jsp">Terms and condition</a>
                <a href="contact.jsp">Contact us</a>

            </div>


            <div class="col">
                <h4>Account </h4>

                <a href="login.jsp">Sign in</a>
                <a href="cartt.jsp">View Cart</a>
                <a href="shop.jsp">My Wishlist</a>
                <a href="order.jsp">Track my order</a>
                <a href="Privacypollicy.jsp">Help</a>
            </div>
            <div class="col">
                <h4>Secured Payment Gateways</h4>
                <i class="fab fa-cc-visa"></i>
                <i class="fab fa-cc-mastercard"></i>
                <i class="fab fa-google-pay"></i>
                <i class="fab fa-paytm"></i> <!-- Close the <i> tag here -->
            </div>



            <!-- copyright section -->

            <div class="copyright">
                <p>&copy; 2024, saivijay art official website </p>
            </div>

        </footer>
    
</body>
</html>