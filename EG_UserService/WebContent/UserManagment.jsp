<%@page import="com.UserManagment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Service</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/UserManagment.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>User Service</h1>

				<form id="formUserManagment" name="formUserManagment" method="post" action="UserManagment.jsp">


					User Name: <input id="name" name="name" type="text"
						class="form-control form-control-sm"> 
						
						<br>Email: <input id="email" name="email" type="text"
						class="form-control form-control-sm"> 
						
						<br>Password: <input id="password" name="password" type="text"
						class="form-control form-control-sm"> 
						
						<br>Account No: <input id="AccountNo" name="AccountNo" type="text"
						class="form-control form-control-sm"> 

						<br>Otp: <input id="otp" name="otp" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					UserManagment projectObj = new UserManagment();
						out.print(projectObj.readProject());
					%>
				</div>
				<br>
			</div>
		</div>
	</div>
</body>
</html>
