<%-- 
    Document   : furniture
    Created on : 08-Apr-2024, 11:58:50 am
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Saivijay Art Furniture</title>
   <!-- fontawsome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
      body{
        background-color: #f8f9fa;  
      }
    .jumbotron {
      background-color: #f8f9fa;
    }
    .card-img-top {
      height: 200px;
      object-fit: cover;
    }
    
    
    
/* header Section */

#header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 3px 80px;
    background: hsl(131, 80%, 88%);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.037);
    z-index: 999;
    position: sticky;
    top: 0;
    left: 0;

}

#navbar {
    display: flex;
    align-items: center;
    justify-content: center;
}

#navbar li {
    list-style: none;
    padding: 0 20px;
    position: relative;
}

#navbar li a {
    text-decoration: none;
    font-size: 15px;
    font-weight: 600;
    color: #1a1a1a;
    transition: 0.3s ease;
}

#navbar li a:hover,
#navbar li a.active {
    color: rgb(32, 189, 102);

}


#navbar li a .active::after,
#navbar li a:hover::after {
    content: "";
    width: 30%;
    height: 3px;
    background: rgb(10, 187, 90);
    position: absolute;
    bottom: -4px;
    left: 20px;
}





#contact-details {
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 60px 0;
}

.details {
    flex: 1;

    margin: 49px
}

.details span {
    font-size: 20px;
    color: #333;
}

.details h2 {
    font-size: 28px;
    margin: 20px 0;
    color: #333;
}

.details h3 {
    font-size: 20px;
    color: #333;
    margin-bottom: 20px;
}

.details ul {
    list-style: none;
    padding: 0;
}

.details li {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    margin: -8px;
    color: #666;
}

.details i {
    margin-right: 15px;
    font-size: 20px;
}

.map {
    flex: 1;
    margin-left: 40px;
}



/* footer section */

footer {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    background-color: #f7f7f7;

}

footer .col {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin-bottom: 20px;
}

footer .logo {
    margin-bottom: 3px;
    width: 200px;

}

footer h4 {
    font-size: 18px;
    padding-bottom: 1px;

}

footer p {
    font-size: 13px;
    margin: 0 0 8px 0;

}

footer a {
    font-size: 16px;
    text-decoration: none;
    color: #222;
    margin-bottom: 10px;


}


footer .follow {
    margin: 2px;
}

footer .follow i {
    color: #465b52;
    padding-right: 4px;
    cursor: pointer;
     flex-direction: row;

}

footer .follow i:hover,
footer a:hover {
    color: #088178;

}

footer .copyright {
    width: 100%;
    text-align: center;
}


  </style>
</head>
<body>
    
    
     <!-- header Section -->
        <section id="header">

            <!-- logo -->
            <a href="#"> <img src="img/products/1706185796821.png" class="logo" width="50"> </a>

            <!-- navbar -->
            <div>
                <ul id="navbar">
                    <li><a class="active" href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp?category=all">Shop</a></li>
                    <li><a href="about.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact us</a></li>
                    <li><a href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                    <li><a href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
                </ul>

            </div>

        </section>

  <div class="container">
    <div class="jumbotron">
      <h1 class="display-4">Welcome to Our Furniture Section!</h1>
      <p class="lead">Explore our wide range of high-quality furniture.</p>
    </div>

    <div class="row">
      <div class="col-md-4">
        <div class="card">
            <img src="img/admin/pexels-vecislavas-popa-1643383.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Living Room Furniture</h5>
            <p class="card-text">Browse our collection of sofas, coffee tables, and more.</p>
          
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
            <img src="img/admin/pexels-m&w-studios-90319.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Bedroom Furniture</h5>
            <p class="card-text">Discover comfortable beds, dressers, and nightstands.</p>
           
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
            <img src="img/admin/pexels-mark-1080721.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Dining Room Furniture</h5>
            <p class="card-text">Find elegant dining tables, chairs, and buffets.</p>
            
          </div>
        </div>
      </div>
    
        <br>
   
        <div class="col-md-4">
          <div class="card">
              <img src="img/admin/pexels-eric-mufasa-1350789.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Chairs</h5>
              <p class="card-text">Explore our wide range of ergonomic and stylish chairs.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
              <img src="img/admin/pexels-pixabay-276583.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Sofas</h5>
              <p class="card-text">Browse our collection of comfortable and stylish sofas.</p>
             
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
              <img src="img/admin/pexels-medhat-ayad-447592.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Tables</h5>
              <p class="card-text">Discover our collection of sturdy and elegant tables.</p>
            
            </div>
          </div>
        </div>
      </div>

   

  </div>
     
     
     
     <br>
     
     
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
     
     
     <br>
     <br>
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


  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
