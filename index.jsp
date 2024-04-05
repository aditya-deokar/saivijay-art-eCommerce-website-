<%-- 
    Document   : home
    Created on : 04-Feb-2024, 9:06:19 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.*" %>
<%@page import="com.mycompany.artistrycart.entities.category" %>
<%@page import="com.mycompany.artistrycart.dao.productdao" %>
<%@page import="com.mycompany.artistrycart.dao.categorydao" %>
<%@page import="com.mycompany.artistrycart.helper.ConnectionProvider" %>


<% 
//        product list
        productdao prodao=new productdao(ConnectionProvider.getConnection());
        ArrayList<product>Newprolist=null;
         ArrayList<product>Fprolist=null;
         
         
          
//   display products based product type     
         
        
            Newprolist=prodao.getNewProducts();
            
            Fprolist=prodao.getFProducts();                   
         
%>


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
                    <li><a class="active" href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp?category=all">Shop</a></li>
                    <li><a href="about.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact us</a></li>
                    <li><a href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                    <li><a href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
                </ul>

            </div>

        </section>

        <!-- home Page -->
        <!-- hero section -->
        <section id="hero">
            <h4>Welcome to Sai Vijay Art</h4>
            <h2>Super value deals </h2>
            <h1>On all products
            </h1>
            <p>Save more with online order up to 40% off!
            </p>

            <h3 class="button"><a href="shop.jsp">Shop Now</a></h3>
        </section>


        <!-- feature product section -->

        <!-- product section -->

        <section id="product1" class="section-p1">

                <h2>Feature Products</h2>
                <p>Collection of new Morden design</p>

           

              
                <div class="pro-container">
                    <%
                          
                      for(product p:Newprolist)
                      {

                    %>

                    <div class="pro hidden" onclick="window.location.href = 'sproduct.jsp?productid=<%= p.getpId() %>';">

                        <form action="addtoCartServlet" method="post">
                            <img src="img/products/<%= p.getpImg1() %>" alt="">

                            <div class="des">

                                <span>saivijay art</span>

                                <h5><%= p.getpName()%></h5>

                                <div class="star">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                                <p><%= p.getpDesc()%></p>

                                <h4><%= p.getpPrice()%></h4>
                            </div>

                            <input type="hidden" name="pquantity" value="1">      
                            <input type="hidden" value="<%= p.getpName()%>" name="productname">
                            <input type="hidden" value="<%= p.getpId()%>" name="productid">
                            <input type="hidden" value="<%= p.getpPrice()%>" name="productprice">
                            <input type="hidden" value="<%= p.getpImg1()%>" name="productimage">


                            <button type="submit" class="normal">
                                <i  class="fa-solid fa-cart-shopping cart"></i>

                            </button>


                        </form>

                    </div>


                    <%  }  
    
                    %>
                </div>
         

        </section> 




        <!--**************************************-->







        <!-- new arrivals -->


        <section id="product1" class="section-p1">

            <h2>New Arrives Products</h2>
            <p>Recently added new Morden design</p>

            <div class="pro-container">
                <!-- product1 -->

                 <%
                          
                      for(product p:Fprolist)
                      {

                    %>

                    <div class="pro hidden" onclick="window.location.href = 'sproduct.jsp?productid=<%= p.getpId() %>';">

                        <form action="addtoCartServlet" method="post">
                            <img src="img/products/<%= p.getpImg1() %>" alt="">

                            <div class="des">

                                <span>saivijay art</span>

                                <h5><%= p.getpName()%></h5>

                                <div class="star">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>

                                <p><%= p.getpDesc()%></p>

                                <h4><%= p.getpPrice()%></h4>
                            </div>

                            <input type="hidden" name="pquantity" value="1">      
                            <input type="hidden" value="<%= p.getpName()%>" name="productname">
                            <input type="hidden" value="<%= p.getpId()%>" name="productid">
                            <input type="hidden" value="<%= p.getpPrice()%>" name="productprice">
                            <input type="hidden" value="<%= p.getpImg1()%>" name="productimage">


                            <button type="submit" class="normal">
                                <i  class="fa-solid fa-cart-shopping cart"></i>

                            </button>


                        </form>

                    </div>

                    <%  }  
    
                    %>

            
            </div>
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

                <p><strong>Phone:</strong> +91 .</p>

                <p><strong>Hours:</strong> 10:00-18:00, Mon-Sat</p>

                <div class="follow">
                    <h4>Follow us</h4>
                    <div class="icon">

                        <i class="fa-brands fa-square-facebook"></i>

                    </div>


                </div>
            </div>



            <!-- col-2 -->
            <div class="col">
                <h4>About</h4>

                <a href="#">About us</a>
                <a href="#">Delivery Information</a>
                <a href="#">Privacy pollicy</a>
                <a href="#">Terms and condition</a>
                <a href="#">Contact us</a>

            </div>


            <div class="col">
                <h4>Account </h4>

                <a href="login.jsp">Sign in</a>
                <a href="#">View Cart</a>
                <a href="#">My Wishlist</a>
                <a href="#">Track my order</a>
                <a href="#">Help</a>
            </div>



            <!-- copyright section -->

            <div class="copyright">
                <p>&copy; 2024, saivijay art official website </p>
            </div>

        </footer>





        <script defer src="js/app.js"></script>
    </body>

</html>