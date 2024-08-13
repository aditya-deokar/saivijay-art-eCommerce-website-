<%-- 
    Document   : login
    Created on : 07-Feb-2024, 10:54:30 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.mycompany.artistrycart.entities.*" %>

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
                    <li><a href="about.html">About us</a></li>
                    <li><a href="contact.html">Contact us</a></li>

                </ul>

            </div>

        </section>



<!--        <div class="container mt-4">
            <div class="row">

                <div class="col-md-6 offset-md-3 ">

                    <div class="card " style="border: 2px solid #cce7d0">

                        <div class="card-header text-center" style="background:hsl(131, 80%, 88%);">
                            <h3>Login here!!</h3>

                        </div>



                        <div class="card-body">


                            login error msg
                            
                            

                           




                            <form action="loginServlet" method="post">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <a href="resister.jsp" class="text-center d-block mb-2">if not register click here</a>


                                <div class="container text-center">
                                    <button type="submit" class="btn btn-outline-success">Login</button>

                                </div>


                            </form>


                        </div>

                    </div>
                </div>
            </div>

        </div>-->
                            
                            
                            
                <div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card" style="border: 2px solid #cce7d0">
					<div class="card-body px-5">

						<div class="container text-center">
                                                    <img src="img/admin/team.png" style="max-width: 100px;"
								class="img-fluid">
						</div>
						<h3 class="text-center">Sign-In</h3>
						<%@include file="components/message.jsp" %>
						
						<!--login-form-->
						
                            <form action="loginServlet" method="post">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
							<div id="login-btn" class="container text-center">
								<button type="submit" class="btn btn-outline-primary me-3">Login</button>
							</div>
						</form>
						<div class="mt-3 text-center">
							<h6><a href="forgot_password.jsp" style="text-decoration: none">Forgot Password?</a></h6>
							<h6>
								Don't have an account?<a href="resister.jsp"
									style="text-decoration: none"> Sign Up</a>
							</h6>
						</div>
					</div>  

				</div>
			</div>
		</div>
	</div>

    </body>
</html>
