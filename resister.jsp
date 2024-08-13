<%-- 
    Document   : resistor
    Created on : 04-Feb-2024, 6:21:34 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>saivijay art </title>

        <%@include file="components/common_css_js.jsp"%>
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
                <ul id="navbar" style="padding-top: 10px; position: relative;">
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp">Shop</a></li>
                    <li><a href="about.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact us</a></li>

                </ul>

            </div>

        </section>


        <div class="container-fluid">

            <div class="row mt-5">
                <div class="col-md-4 offset-md-4">

                    <div class="card " style="border: 2px solid #cce7d0">

                        <!--error msg-->
                        <%@include file="components/message.jsp" %>

                        <div class="card-body px-5 ">

                            <div class="container text-center">
                                                    <img src="img/admin/team.png" style="max-width: 100px;"
								class="img-fluid">
						</div>
                            <h3 class="text-center my-3">Sign up here!!</h3>




                            <form action="RServlet" method="post">

                                <div class="form-group">
                                    <label for="name">User Name</label>
                                    <input type="text" class="form-control" name="user_name" id="name" aria-describedby="emailHelp" placeholder="enter name">
                                </div>

                                <div class="form-group">
                                    <label for="email">User Email</label>
                                    <input type="email" class="form-control" name="user_email" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>

                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="user_password" id="password" aria-describedby="emailHelp" >
                                </div>

                                <div class="form-group">
                                    <label for="phone">Phone No</label>
                                    <input type="number" class="form-control" name="user_phone" id="phone" aria-describedby="emailHelp" >
                                </div>

                                <div class="form-group">
                                    <label for="name">Address</label>
                                    <textarea style="height: 70px" name="user_address" class="form-control" placeholder="enter your address"></textarea>
                                </div>

                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Register</button>
                                    <button class="btn btn-outline-warning">Reset</button>
                                </div>


                            </form>
                        </div>
                    </div>


                </div>
            </div>

        </div>
    </body>
</html>
