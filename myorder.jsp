<%-- 
    Document   : myorder
    Created on : 02-Apr-2024, 7:32:52 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.Orders" %>
<%@page import="com.mycompany.artistrycart.entities.users" %>
<%@page import="com.mycompany.artistrycart.dao.orderdao" %>
<%@page import="com.mycompany.artistrycart.dao.userdao" %>
<%@page import="com.mycompany.artistrycart.helper.ConnectionProvider" %>

<!DOCTYPE html>
<html lang="en">
    
    
    <%
    
        
        
    users user=(users)session.getAttribute("currentUser");
    
    if(user==null)
    {
        
        response.sendRedirect("login.jsp");
    }
    else{

//       int uid=user.getuserid();
       ArrayList<Orders> myProduct=null;
    
    
       
       orderdao odao=new orderdao(ConnectionProvider.getConnection());
       myProduct =odao.getOrderedProducts(user.getUserid());
       
       
    
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
                    <li><a  href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i><span>()</span></a></li>
                    <li><a class="active" href="profile.jsp"><i class="fa-solid fa-user"></i></a></li>
                </ul>

            </div>

</section>






    <section id="page-header" class="contact-header">
        <h2>#ORDER</h2>
        <p>My Order</p>
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
                        <th>Payment Id</th>
                        <th>Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%
                         
                             for(Orders c:myProduct)
                             {
                        %> 

                    
                     <tr>
                                   
                                 <td><a href="removefromCartServlet?id=<%= c.getuId() %>"><i class="far fa-times-circle"></i></a></td>
                                 
                                 
                                 
                                 <td><img src="img/products/<%= c.getpImg1() %>" alt="" class="img-fluid"></td>
                                 <td><%= c.getpPrice() %></td>
                                 <td> <%= c.getpName() %> </td>
                                 <td> <%= c.getRPpaymentId() %> </td>
                                 
                                 <td>
                                     <form action="orderNowServlet" method="post" >
                                         <input type="hidden" name="pid" value="<%= c.getpId() %>" class="form-control">
                                         
                                           <input type="text" name="quantity" value="1" class="form-control" style="width: 25px">
                                        
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
                     
                     
                  
                
                
   
    
</body>

</html>
