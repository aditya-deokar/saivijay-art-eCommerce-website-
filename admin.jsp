<%-- 
    Document   : admin
    Created on : 10-Feb-2024, 10:26:54 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.*" %>



<%@page import="com.mycompany.artistrycart.dao.*" %>
<%@page import="com.mycompany.artistrycart.helper.ConnectionProvider" %>


<!--Protecting admin page-->
<%
    users user=(users)session.getAttribute("currentUser");
    
    if(user==null)
    {
    
        session.setAttribute("message","You are not Logged in!! Login first");
        response.sendRedirect("login.jsp");
        return;
    }else{
        
        if(user.getUsertype().equals("normal"))
        {
            session.setAttribute("message","You are not admin!! Do not access this page");
            response.sendRedirect("login.jsp");
            return;
        }
        

    }

    


%>



<%
    userdao us=new userdao(ConnectionProvider.getConnection());
    ArrayList<users>userlist=us.getAllUsers();
    
    categorydao cate=new categorydao(ConnectionProvider.getConnection());
    ArrayList<category>list=cate.getAllCategory();

    productdao prodao=new productdao(ConnectionProvider.getConnection());
    ArrayList<product>prolist=prodao.getAllProducts();
         

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/common_css_js.jsp"%>
        <link rel="stylesheet" href="css/admincss.css">

    </head>
    <body>

        <%@include file="components/adminnavbar.jsp" %>



        <div class="container text-center">
            <!--msg for successfully add cate-->
            <%@include file="components/message.jsp" %>
        </div>

        <div class="container">

            <!--row-1-->
            <div class="row mt-3">

                <!--   col-1-->

                <div class="col-md-4">


                    <!--box-1-->
                    <div class="card " onclick="window.location.href = 'displayUsers.jsp'">
                        <div class="card-body text-center">

                            <div class="container">
                                <img src="img/admin/team.png" alt="userspic" class="img-fluid " style="max-width: 150px">
                            </div>

                            <h1><%= userlist.size() %></h1>
                            <h1 class="text-uppercase text-muted">users</h1>
                        </div>
                    </div>
                </div>



                <!--   col-2-->

                <div class="col-md-4">


                    <!--box-2-->
                    <div class="card" onclick="window.location.href = 'displayCate.jsp'">
                        <div class="card-body text-center">

                            <div class="container">
                                <img src="img/admin/category.png" alt="userspic" class="img-fluid " style="max-width: 150px">
                            </div>

                            <h1><%= list.size()%></h1>
                            <h1 class="text-uppercase text-muted">categories</h1>
                        </div>
                    </div>
                </div>



                <!--   col-3-->

                <div class="col-md-4">


                    <!--box-3-->
                    <div class="card" onclick="window.location.href = 'adminProducts.jsp'">
                        <div class="card-body text-center">

                            <div class="container">
                                <img src="img/admin/product.png" alt="userspic" class="img-fluid rounded-circle" style="max-width: 150px">
                            </div>

                            <h1><%= prolist.size() %></h1>
                            <h1 class="text-uppercase text-muted">products</h1>
                        </div>
                    </div>
                </div>



            </div>



            <!--row-2-->

            <div class="row mt-2">

                <!--col-1 row-2-->
                <div class="col-md-6">
                    <div class="card custom-bg" data-toggle="modal" data-target="#addcatemodal">
                        <div class="card-body text-center">

                            <div class="container">
                                <img src="img/admin/checklist.png" alt="userspic" class="img-fluid" style="max-width: 150px">
                            </div>

                         
                            <h1 class="text-uppercase text-muted">Add Category</h1>
                        </div>

                    </div>
                </div>


                <!--col-2 row-2-->
                <div class="col-md-6">

                    <div class="card custom-bg " data-toggle="modal" data-target="#addProductmodal">
                        <div class="card-body text-center">

                            <div class="container">
                                <img src="img/admin/delivery-box.png" alt="userspic" class="img-fluid" style="max-width: 150px">
                            </div>

                         
                            <h1 class="text-uppercase text-muted">Add Product</h1>
                        </div>

                    </div>

                </div>
                
                <br>
                <div class="col-md-12" onclick="window.location.href = 'https://dashboard.razorpay.com/app/payments'">

                    <div class="card custom-bg " >
                        <div class="card-body text-center">

                            <div class="container">
                                <img src="img/admin/delivery-box.png" alt="userspic" class="img-fluid" style="max-width: 150px">
                            </div>

                         
                            <h1 class="text-uppercase text-muted">view Orders and Payment details</h1>
                        </div>

                    </div>

                </div>
                
                
                
            </div>

            <a href="displayOrders.jsp" role="button" class="btn btn-secondary">view orders in Razorpay dashboard</a>


        </div>



        <!--add model-->




        <!-- Modal for add categorise-->
        <div class="modal fade" id="addcatemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg " role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg">
                        <h5 class="modal-title" id="exampleModalLabel">Add new Category </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">


                        <form action="addCategoryServlet" method="post">




                            <input type="hidden" name="operation" value="addCategory">

                            <div class="form-group">
                                <label for="catename">Title</label>
                                <input type="text" name="cateTitle" required class="form-control" id="catename" placeholder="enter new Category">

                            </div>

                            <div class="form-group">
                                <label for="catedesc">Category Description</label>
                                <textarea style="height: 50px" name="cateDesc" class="form-control" placeholder="description"></textarea>
                            </div>

                            <div class="container text-center">

                                <button class="btn btn-outline-success">UPLOAD DATA</button>
                            </div>
                        </form>




                    </div>

                </div>
            </div>
        </div>

        <!--end cate modal-->





        <!--******************************************-->
        <!--product modal-->


        <div class="modal fade" id="addProductmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg " role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg">
                        <h5 class="modal-title" id="exampleModalLabel">Add new Product </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">


                        <form action="addProductServlet" method="post" enctype="multipart/form-data">




                            <input type="hidden" name="operation" value="addProduct">

                            <div class="form-group">
                                <label for="productname">Title</label>
                                <input type="text" name="proTitle" required class="form-control" id="productname" placeholder="Enter new Product Name">
                            </div>


                            <div class="form-group">
                                <label for="productdesc">Product Description</label>
                                <textarea style="height: 50px" name="proDesc" class="form-control" placeholder="description"></textarea>
                            </div>




                            <div class="form-group">

                                <label for="productprice">Price:</label>
                                <input type="number" name="proPrice" required  id="productprice" placeholder="Enter Price">


                                <label for="productdiscount">Discount:</label>
                                <input type="number" name="proDiscount" required  id="productdiscount" >


                                <label for="productquantity">Quantity:</label>
                                <input type="number" name="proQuantity" required id="productquantity" >



                            </div>




                            <!--product category-->


                            <div class="form-group">
                                <label for="productquantity">Select Product Category</label>
                                <select name="cateId" class="form-control">

                                    <%
                                        
//                                        get the dynamic categories 
                                        for(category c:list)
                                        {
                                    %>
                                    <option value="<%= c.getCateId() %>"><%= c.getCateTitle()%></option>
                                    <%
                                        }
                            
                            
                                    %>
                                </select>
                            </div>

                            <!--img-->
                            <div class="form-group">

                                <label for="productphotos" class="form-control">Upload Product Images:</label>
                                <input type="file" name="pImg1" class="form-group" required>
                                <input type="file" name="pImg2" class="form-group" required>
                                <input type="file" name="pImg3" class="form-group" required>
                                <input type="file" name="pImg4" class="form-group" required>

                            </div>



                            <div class="container text-center">

                                <button class="btn btn-outline-success">UPLOAD DATA</button>
                            </div>
                        </form>




                    </div>

                </div>
            </div>
        </div>



        <!--end product modal-->


             


    </body>
</html>
