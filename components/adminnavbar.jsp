<%-- 
    Document   : navbar
    Created on : 04-Feb-2024, 6:10:24 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>


       
            
            <nav style="background: #eeeeee" class="navbar navbar-expand-lg navbar-light custom-bg">
            <a class="navbar-brand" href="index.jsp">SaiVijay Art</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="admin.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    
                    
                   
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Categorises
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                   
                </ul>
                
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="resister.jsp">Registration </a>
                    </li>
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="login.jsp">Login </a>
                    </li>
                </ul>   
                
            </div>
        </nav>



    </body>
</html>
