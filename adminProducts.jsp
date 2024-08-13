<%-- 
    Document   : adminProducts
    Created on : 07-Apr-2024, 8:43:30 pm
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
   productdao prodao=new productdao(ConnectionProvider.getConnection());
         ArrayList<product>prolist=null;
         
  prolist=prodao.getAllProducts();
  
  //         category list
          categorydao catedao=new categorydao(ConnectionProvider.getConnection());
                                         
          ArrayList<category>catelist=catedao.getAllCategory();
                   
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
				<th>Image</th>
				<th>Name</th>
				
				<th>Price</th>
				<th class="text-start">Quantity</th>
				<th class="text-start">Discount</th>
				<th>Action</th>
			</tr>
			<%
			 for(product p:prolist)
                            {
                            %>
			<tr class="text-center">
				<td><img src="img/products/<%= p.getpImg1() %>" style="width: 60px; height: 60px; width: auto;"></td>
				<td class="text-start"><%=p.getpName()%></td>
				
				<td>&#8377;<%= p.getpPrice()%></td>
				<td><%= p.getpQuantity()%></td>
				<td><%=p.getpDiscount()%>%</td>
				<td><a href="update_product.jsp?pid=<%=p.getpId()%>" role="button" class="btn btn-secondary">Update</a>&emsp;<a
					href="AddOperationServlet?pid=<%=p.getpId()%>&operation=deleteProduct"
					class="btn btn-danger" role="button">Delete</a></td>
			</tr>
			<%
			}
			%>
                        
                        
                        
                        
                        
		</table>
	</div>
                        
                        <br>
                        <hr> <br>               
                        <!-- Category -->
	<div class="container mt-3">
	
		<table class="table table-hover">
			<tr class="custom-bg text-center" style="font-size: 20px;">
				
				<th>Category Name</th>
                                <th>Description</th>
				<th>Action</th>
			</tr>
			<%
			 for(category c:catelist)
                          {
			%>
			<tr class="text-center">
				
				<td><%=c.getCateTitle()%></td>
                                <td><%=c.getCateDesc()%></td>
                                
				<td><a href="update_category.jsp?cid=<%=c.getCateId()%>" role="button" class="btn btn-secondary">Update</a>&emsp;<a
					href="AddOperationServlet?cid=<%=c.getCateId()%>&operation=deleteCategory"
					class="btn btn-danger" role="button">Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>

</body>
</html>


