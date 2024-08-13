<%-- 
    Document   : error_page
    Created on : 13-Feb-2024, 10:32:00 am
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! something went Wrong...</title>
        
        <%@include file="components/common_css_js.jsp"%>
        
    </head>
    <body>
       
        
        
        <div class="container text-center">
            <img src="img/error.png" class="img-fluid"  alt="error image"/>
            <h2 class="display-3">Sorry! Something went Wrong..</h2>
            
           <!--exception-->
           <%= exception %>
            <a href="home.jsp" class="btn btn-lg  mt-3">Home</a>
            
        </div>
    </body>
</html>
