<%-- 
    Document   : shop
    Created on : 18-Feb-2024, 11:40:45 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.*" %>
<%@page import="com.mycompany.artistrycart.entities.category" %>
<%@page import="com.mycompany.artistrycart.dao.productdao" %>
<%@page import="com.mycompany.artistrycart.dao.categorydao" %>
<%@page import="com.mycompany.artistrycart.helper.*" %>



<%
    ArrayList<cart> cart_list=(ArrayList<cart>) session.getAttribute("cart-list");
    
  
    
    if(cart_list != null)
    {
      
       request.setAttribute("cart_list",cart_list);
    }


%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shop</title>

        <script src="js/cartscript.js"></script>
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
                <li><a href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i><span>(${cart_list.size()})</span></a></li>
                <li><a href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
            </ul>

        </div>

    </section>


    <section id="page-header" class="contact-header">
        <h2>#StayHome</h2>
        <p>Save More With Coupons & up to 70% off</p>
    </section>












    <% 
        
        
        
        String catid=request.getParameter("category");
        
        
        
//        out.println(catid);
        
        
        
//        product list
         productdao prodao=new productdao(ConnectionProvider.getConnection());
         ArrayList<product>prolist=null;
         
         
          //         category list
          categorydao catedao=new categorydao(ConnectionProvider.getConnection());
                                         
          ArrayList<category>catelist=catedao.getAllCategory();
                                         
         
         
          
//   display products based on catid and all      
         
         if(catid==null || catid.trim().equals("all"))
        {
             prolist=prodao.getAllProducts();
         }else{
                
            int cid=Integer.parseInt(catid.trim());
             prolist=prodao.getAllProductsById(cid);
    
         }
                                         
         
         


    %>




    <!--categories section-->
    <!--code for get dynamic category of product-->

    <section id="categories" class="section-c1">

        <div class="cate-container">


            <!-- all product cate buttun -->

            <div class="cate">

                <a href="shop.jsp?category=all"><h4>All Products</h4></a>

            </div>

            <%
                         
                                         
                              
                          for(category c:catelist)
                          {
            %>
            <!-- cate 1 -->

            <div class="cate hidden">

                <a href="shop.jsp?category=<%= c.getCateId() %>"> <h4><%= c.getCateTitle() %></h4></a>

            </div>
            <%            }     

            %>

            <!--code for get dynamic content of product-->   

        </div>
    </section>
    <!--end categories section-->















    <!-- product section -->

    <section id="product1" class="section-p1">



        <div class="pro-container">
            <!--Dynamic products-->

            <%
                          
              for(product p:prolist)
              {

            %>
            
            <div class="pro hidden" onclick="window.location.href='sproduct.jsp?productid=<%= p.getpId() %>';">

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

                    <p><%= Helper.get10words(p.getpDesc())%></p>

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

                if(prolist.size()==0)
                {

                    
                     out.println("<h1> No Product Available in This Category! </h1>");
            
            
                }

            %>



            <!--end of dynamic products-->

        </div>
    </section>









   













    <section id="pagination" class="section-p1">
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#" class="arrow-link"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none"
                                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-arrow-right">
            <line x1="5" y1="12" x2="19" y2="12"></line>
            <polyline points="12 5 19 12 12 19"></polyline>
            </svg></a>
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

</body>





</html>