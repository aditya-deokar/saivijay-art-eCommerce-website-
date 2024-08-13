<%-- 
    Document   : profile
    Created on : 13-Feb-2024, 10:13:57 am
    Author     : adity
--%>


<%@page import="com.mycompany.artistrycart.entities.users" %>
<%@page import="com.mycompany.artistrycart.dao.userdao" %>
<%@page import="com.mycompany.artistrycart.servlets.loginServlet" %>
<%
    users user=(users)session.getAttribute("currentUser");
    
    if(user==null)
    {
        
        response.sendRedirect("login.jsp");
    }
    else{

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


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

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <style>

            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f7f7f7;
            }

           
            .profile-details img {
                object-fit: cover;
                height: 150px;
                width: 100%;
            }

            .profile-and-form {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
            }

            .billing-form {
                width: 45%;
            }

            @media (max-width: 768px) {
                .profile-and-form {
                    flex-direction: column;
                }

                .billing-form {
                    width: 100%;
                }
            }

            .profile-details h1 {
                /*font-family: Arial, sans-serif;*/
                color: #088178;
                margin-top: 10px;
            }

            .profile-details p {
                font-family: Arial, sans-serif;
                color: #666;
            }

            .custom-container {
                margin-top: 20px;
                padding: 20px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }



            .logo {
                margin-top: 10px;
                margin-right: 20px;
            }

            .cart-profile-icons {
                margin-left: auto;
            }

            .list-unstyled a{
                font-size: 16px;
                text-decoration: none;
                color: #222;
                margin-bottom: 10px;
            }


            .list-unstyled a:hover
            {
                color: #088178;

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
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a  href="shop.jsp">Shop</a></li>
                    <li><a href="about.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact us</a></li>
                    <li><a href="cartt.jsp"><i class="fa-solid fa-cart-shopping"></i><span>(${cart_list.size()})</span></a></li>
                    <li><a href="profile.jsp" class="active"><i class="fa-solid fa-user"></i></a></li>
                </ul>

            </div>

        </section>


        <section id="page-header" class="contact-header">
            <h2><b>#UserProfile</b></h2>
            <p>Welcome to Saivijay Art, where creativity meets elegance. We're delighted to have you as part of our artistic community</p>
        </section>




        <div class="container mt-5 custom-container">
            <div class="row">
                <div class="col-md-10 mx-auto">
                    <div class="account-page">
                        <div class="profile-and-form">
                            <div class="profile">
                                <div class="profile-details text-center">
                                    <img src="img/admin/team.png" alt="" class="img-fluid rounded-circle mb-4">
                                    <h1 style="font-size: 27px; font-weight: bold;"> Hello ,<%= user.getUsername()%></h1>
                                    <p><%= user.getEmail()%></p>
                                </div>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="d-block">Account</a></li>
                                    <li><a href="#" class="d-block"> <label for="password">Change Password</label><span>></span></a>
                                    </li>
                                    <li><a href="Billing-Details.html" class="d-block"> <label for="state">Update Billing Info</label> <span>></span></a>
                                    </li>
                                    <li><a href="myorder.jsp" class="d-block">My Orders </a></li>
                                    <li><a href="Delete-Account.html" class="d-block">Delete Account </a>
                                    </li>
                                    <li><a href="logoutServlet" class="d-block">Logout </a></li>



                                </ul>
                            </div>
                            <div class="billing-form">
                                <h2 class="text-center mb-4">Billing Information</h2>
                                
                                <%@include file="components/message.jsp" %>
                                <form action="updateProfileServlet" method="post">
                                    <div class="form-row mb-3">
                                        <div class="col">
                                            <label for="state">State</label>
                                            <input type="text" class="form-control" name="state" id="state" placeholder="Enter your state">
                                        </div>
                                        <div class="col">
                                            <label for="city">City</label>
                                            <input type="text" class="form-control" name="city" id="city" placeholder="Enter your city">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address">Address</label>
                                        <input type="text" class="form-control" id="address"
                                               placeholder="<%= user.getAddress()%>">
                                    </div>
                                    <div class="form-row mb-3">
                                        <div class="col">
                                            <label for="pincode">Pin Code</label>
                                            <input type="pincode" class="form-control" name="pincode" id="pincodw"
                                                   placeholder="Enter pin code">
                                        </div>
                                        <div class="col">
                                            <label for="password">Change Password</label>
                                            <input type="password" class="form-control" id="password"
                                                   placeholder="Enter new password">
                                        </div>
                                    </div>
                                    <div class="form-row mb-3">

                                        <div class="col">
                                            <label for="mobile">Mobile</label>
                                            <input type="tel" class="form-control" id="mobile"
                                                   placeholder="<%= user.getPhone_no()%>">
                                        </div>
                                        <div class="col">
                                            <label for="tel">Alternate Mob</label>
                                            <input type="tel" class="form-control" name="altmobno" id="tel"
                                                   placeholder="Add another Number">
                                        </div>
                                        
                                        <input type="hidden" class="form-control" name="email" value="<%= user.getEmail()%>" >

                                    </div>
                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-outline-success">Update</button>

                                    </div>
                                    <!--<button type="submit" class="btn btn-primary btn-block">Update</button>-->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>








        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <%  }  %> 
    </body>
</html>
