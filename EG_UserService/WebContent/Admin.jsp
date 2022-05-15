<%@page import="com.UserManagment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Service</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/UserManagment.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Admin Service</h1>

				<form id="formUserManagment" name="formUserManagment" method="post" action="UserManagment.jsp">


					User Name: <input id="name" name="name" type="text" required placeholder="Name"
						class="form-control form-control-sm"> 
						
						<br>Email: <input type="email" id="email" name="email" type="text" required placeholder="email"
						class="form-control form-control-sm"> 
						
						<br>Password: <input type="password" id="password" name="password" type="text" required placeholder="password"
						class="form-control form-control-sm"> 
						
						<br>Account No: <input id="AccountNo" name="AccountNo" type="text" required placeholder="xxxxxxxxx"
						class="form-control form-control-sm"> 

						
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
						
						<a class="btn btn-primary" href="UserManagment.jsp">Register Page</a>  
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>


</body>

<br>
				<div id="divProjectGrid">
					<%
					UserManagment projectObj = new UserManagment();
						out.print(projectObj.readProject());
					%>
				</div>

</html>