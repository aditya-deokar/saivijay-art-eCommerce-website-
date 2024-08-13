<%-- 
    Document   : displayOrders
    Created on : 08-Apr-2024, 3:08:48 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.*" %>

<%@page import="com.mycompany.artistrycart.dao.*" %>
<%@page import="com.mycompany.artistrycart.dao.categorydao" %>
<%@page import="com.mycompany.artistrycart.helper.*" %>

<%
  
  
  orderdao odao=new orderdao(ConnectionProvider.getConnection()); 
  ArrayList<Orders>olist=odao.getAllOrders();
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Product's</title>
 <%@include file="components/common_css_js.jsp"%>
        <link rel="stylesheet" href="css/admincss.css">

    </head>
    <body>

        <%@include file="components/adminnavbar.jsp" %>


	<!-- update product -->
	<div class="container mt-3">
		 <%@include file="components/message.jsp" %>
		<table class="table table-hover">
			<tr class="custom-bg text-center" style="font-size: 20px;">
				<th>oId</th>
				<th>uId</th>
				
				<th>ProId</th>
				<th class="text-start">RPorderId</th>
				<th class="text-start">RPpaymentId</th>
				<th>Action</th>
			</tr>
			<%
			 for(Orders o:olist)
                            {
                            %>
			<tr class="text-center">
			
				<td class="text-start"><%=o.getOrderId()%></td>
				
				<td><%=o.getuId()%></td>
				<td><%=o.getProId()%></td>
				<td><%=o.getRPorderId()%></td>
                                <td><%=o.getRPpaymentId()%></td>
				<td><a href="update_product.jsp?pid=" role="button" class="btn btn-secondary">Update</a>&emsp;<a
					href="AddOperationServlet?pid=&operation=deleteProduct"
					class="btn btn-danger" role="button">Delete</a></td>
			</tr>
			<%
			 }
			%>
                       
                        
                        
                        
		</table>
	</div>
                        
                        <br>
                        <hr> <br>               
                      

</body>
</html>



