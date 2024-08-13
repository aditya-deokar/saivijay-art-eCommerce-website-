<%-- 
    Document   : cartt
    Created on : 24-Feb-2024, 7:19:19 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.product" %>
<%@page import="com.mycompany.artistrycart.entities.cart" %>
<%@page import="com.mycompany.artistrycart.dao.productdao" %>
<%@page import="com.mycompany.artistrycart.dao.categorydao" %>
<%@page import="com.mycompany.artistrycart.helper.ConnectionProvider" %>

<!DOCTYPE html>
<html lang="en">
    
    
    <%
    ArrayList<cart> cart_list=(ArrayList<cart>) session.getAttribute("cart-list");
    
    ArrayList<cart> cartProduct=null;
    
    if(cart_list != null)
    {
       productdao pdao=new productdao(ConnectionProvider.getConnection());
       
       cartProduct =pdao.getCartProducts(cart_list);
       request.setAttribute("cart_list",cart_list);
       
       
       
       double total=pdao.getTotalCartPrice(cart_list);
        request.setAttribute("total",total);
    }

    

    
%>


<%
    
//   String proid=request.getParameter("product");
//   
//   int proId=Integer.parseInt(proid.trim());
//        
//    //        product list
//         productdao prodao=new productdao(ConnectionProvider.getConnection());
//         ArrayList<cart>prolist=prodao.getCartProductsBypId(proId);
//         
//        



%>

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
                    <li><a  href="shop.jsp">Shop</a></li>
                    <li><a  href="about.jsp">About us</a></li>
                    <li><a  href="contact.jsp">Contact us</a></li>
                    <li><a class="active" href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i><span>(${cart_list.size()})</span></a></li>
                    <li><a href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
                </ul>

            </div>

</section>






    <section id="page-header" class="contact-header">
        <h2>#CARD</h2>
        <p>Card Of Item</p>
    </section>
   


    <section id="card" class="section-p1">
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>Remove</th>
                        <th>Image</th>
                        <th>Price</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%
                           if(cart_list != null)
                           {
                       
                             for(cart c:cartProduct)
                             {
                        %> 

                    
                     <tr>
                                   
                                 <td><a href="removefromCartServlet?id=<%= c.getpId() %>"><i class="far fa-times-circle"></i></a></td>
                                 
                                 
                                 
                                 <td><img src="img/products/<%= c.getpImg1() %>" alt="" class="img-fluid"></td>
                                 <td><%= c.getpPrice() %></td>
                                 <td> <%= c.getpName() %> </td>
                                 
                                 
                                 <td>
                                     <form action="orderNowServlet" method="post" >
                                         <input type="hidden" name="pid" value="<%= c.getpId() %>" class="form-control">
                                         
                                         <!--<a href="QuantityIncDecServlet?action=dec&id=<%= c.getpId() %>"><i class="fa-solid fa-square-minus"></i></a>-->
                                         <input type="text" name="quantity" value="1" class="form-control" style="width: 25px">
                                         <!--<a href="QuantityIncDecServlet?action=inc&id=<%= c.getpId() %>"><i class="fa-solid fa-square-plus"></i></a>-->
                                         
                                         <input type="hidden" name="price" value="<%= c.getpPrice() %>" class="form-control">
                                         <button type="submit" class="checkout-button">Buy Now</button>
                                     
                                     </form>
                                 </td>
                                 
                                
                                 <td><%= c.getpPrice() %></td>
                                 
                               </tr>
                    
                     <%     }
                          }
                     %>
                    
                    
                </tbody>
            </table>
        </div>
    </section>
                     
                     
                   <section id="card-add" class="section-p1">
       <div id="coupon">
            <h3>Apply Coupon</h3>
            <div>
                <input type="text" placeholder="Enter Your Coupon">
                <button class="normal">Apply</button>
            </div>
        </div>
        <div id="subtotal">
            <h3>Cart Totals</h3>
            <table>
                <tr>
                    <td>Card Subtotal</td>
                    <td>${ (total>0)?total:0 }</td>
                </tr>
                <tr>
                    <td>Shipping</td>
                    <td>Free</td>
                </tr>
                <tr>
                    <td><strong>Total</strong></td>
                    <td><strong>${ (total>0)?total:0 }</strong></td>
                </tr>
            </table>
                <a href="checkOutServlet" ><button  class="checkout-button" >Proceed to Checkout</button> </a>
        </div>
    </section>
                
                
   
    <!-- footer Section -->
    <footer class="section-p1">
        <!-- col-1 -->
        <div class="col">
            <img class="logo" src="img/products/1706185796821.JPG" alt="">
        </div>
        <div class="col">
            <h4>Contact</h4>
            <p><strong>Address:</Address></strong> Rui,Shirdi-423109</p>
            <p><strong>Phone:</Address></strong> +91 .</p>
            <p><strong>Hours:</Address></strong> 10:00-18:00, Mon-Sat</p>
            <div class="follow">
                <h4>Follow us</h4>
                <div class="icon">
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
            <a href="#">Sign in</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track my order</a>
            <a href="#">Help</a>
        </div>
        <div class="col">
            <p>Secured Payment Gateways</p>
            <img src="" alt="">
        </div>
        <!-- copyright section -->
        <div class="copyright">
            <p>&copy; 2024, saivijay art official website </p>
        </div>
    </footer>
    <!-- <script>
        // Add JavaScript code here to make the page responsive
        window.addEventListener('resize', function () {
            // Get viewport width
            var width = window.innerWidth;
            if (width <= 768) {
                document.getElementById('card').classList.remove('section-p1');
                document.getElementById('card-add').classList.remove('section-p1');
            } else {
                document.getElementById('card').classList.add('section-p1');
                document.getElementById('card-add').classList.add('section-p1');
            }
        });
    </script> -->
</body>

</html>
