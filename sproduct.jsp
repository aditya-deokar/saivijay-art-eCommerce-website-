<%-- 
    Document   : sproduct
    Created on : 22-Feb-2024, 2:51:18 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.product" %>
<%@page import="com.mycompany.artistrycart.entities.category" %>
<%@page import="com.mycompany.artistrycart.dao.productdao" %>
<%@page import="com.mycompany.artistrycart.dao.categorydao" %>
<%@page import="com.mycompany.artistrycart.helper.ConnectionProvider" %>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shop Product</title>

        <link rel="stylesheet" href="css/style.css">
        <script src="js/script.js"></script>


        <!-- fontawesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
              rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap"
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
                <li><a class="active" href="shop.jsp">Shop</a></li>
                <li><a href="about.jsp">About us</a></li>
                <li><a href="contact.jsp">Contact us</a></li>
                <li><a href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                <li><a href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
            </ul>

        </div>

    </section>

  <% 
        
        
        String proid=request.getParameter("productid");
        
//        out.println(catid);
        
        
        
//        product list based on pid
         productdao prodao=new productdao(ConnectionProvider.getConnection());
         ArrayList<product>prolist=null;
         
         
          
         
          
           //   display products based on proid       
         
            int pid=Integer.parseInt(proid.trim());
             prolist=prodao.getAllProductsBypId(pid);
    
         ArrayList<product>Newprolist=null;
     
           //   display products based product type     
         Newprolist=prodao.getNewProducts();
                                         
         
         


    %>
<!--single product-->
        <section id="prodetails" class="section-p1">
            
            <!--dynamic content-->
            
            
            <%
                         
                                         
                              
                          for(product p:prolist)
                          {
            %>
            <div class="single-pro-image">
                <div class="large-img">
                    <img src="img/products/<%= p.getpImg1() %>" width="100%" id="MainImg" alt="">
                </div>
                <div class="small-img-group">

                    <div class="small-img-col">
                        <img src="img/products/<%= p.getpImg2() %>" width="100%" class="small-img" alt="">
                    </div>


                    <div class="small-img-col">
                        <img src="img/products/<%= p.getpImg3() %>" width="100%" class="small-img" alt="">
                    </div>


                    <div class="small-img-col">
                         <img src="img/products/<%= p.getpImg4() %>" width="100%" class="small-img" alt="">
                    </div>


                    <div class="small-img-col">
                         <img src="img/products/<%= p.getpImg1() %>" width="100%" class="small-img" alt="">
                    </div>

                </div>
            </div>

            <div class="single-pro-details">
                <form action="addtoCartServlet" method="post">
                <h6>Bullock Cart</h6>
                <h4><%= p.getpName()%></h4>
                <h2><%= p.getpPrice()%></h2>
                <select> 
                    <option>Select Bullock Cart</option>
                    <option>Woodeen Size N0 1</option>
                    <option>Woodeen Size N0 2</option>
                    <option>Woodeen Size N0 3</option>
                   
                </select>
                <input type="Number" name="pquantity" value="1">
                
                
                
                <input type="hidden" value="<%= p.getpName()%>" name="productname">
                <input type="hidden" value="<%= p.getpId()%>" name="productid">
                <input type="hidden" value="<%= p.getpPrice()%>" name="productprice">
                <input type="hidden" value="<%= p.getpImg1()%>" name="productimage">
               
                 <button type="submit" class="normal">Add To Cart </button>
                <span><%= p.getpDesc()%> </span>
                
                </form>
                 <form action="orderNowServlet" method="post" >
                                         <input type="hidden" name="pid" value="<%= p.getpId() %>" class="form-control">
                                         
                                         <input type="hidden" name="quantity" value="1" class="form-control" style="width: 25px">
                                    
                                         
                                         <input type="hidden" name="price" value="<%= p.getpPrice() %>" class="form-control">
                                         <button type="submit" class="checkout-button">Buy Now</button>
                                     
                                     </form>
            </div>
                
                
                
            <%            }     

            %>

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
        
        
        
        
         <script defer src="js/app.js">

       
    </script>


    </body>
    <script>

    var MainImg = document.getElementById("MainImg");
    var smallimg = document.getElementsByClassName("small-img");

    smallimg[0].onclick = function () {
        MainImg.src = smallimg[0].src;
    }

    smallimg[1].onclick = function () {
        MainImg.src = smallimg[1].src;
    }

    smallimg[2].onclick = function () {
        MainImg.src = smallimg[2].src;
    }

    smallimg[3].onclick = function () {
        MainImg.src = smallimg[3].src;
    }


</script>

   
</html>
