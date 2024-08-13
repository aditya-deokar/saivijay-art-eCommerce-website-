<%-- 
    Document   : displayUsers
    Created on : 07-Apr-2024, 10:35:10 pm
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.mycompany.artistrycart.entities.*" %>

<%@page import="com.mycompany.artistrycart.dao.*" %>

<%@page import="com.mycompany.artistrycart.helper.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View User's</title>
<%@include file="components/common_css_js.jsp"%>
        <link rel="stylesheet" href="css/admincss.css">

    </head>
    <body>

        <%@include file="components/adminnavbar.jsp" %>

	<div class="container-fluid px-5 py-3">
		<table class="table table-hover">
			<tr class="text-center custom-bg" style="font-size: 18px;">
				<th>User Name</th>
				<th>Email</th>
				<th>Phone No.</th>
				
				<th>Address</th>
				
				<th>Action</th>
			</tr>
			<%
			userdao udao = new userdao(ConnectionProvider.getConnection());
			List<users> userList = udao.getAllUsers();
			for (users u : userList) {
			%>
			<tr>
				<td><%=u.getUsername()%></td>
				<td><%=u.getEmail()%></td>
				<td><%=u.getPhone_no()%></td>
				
				<td><%=u.getAddress()%></td>
				
				<td><a href="UpdateUserServlet?operation=deleteUser&uid=<%=u.getUserid()%>" role="button" class="btn btn-danger">Remove</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>