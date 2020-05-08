<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regsitartion Page</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<div class="container">
		<h1 class="text-center">Regisration List</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Company Name</th>
					<th scope="col">Contact Number</th>
					<th scope="col">Gender</th>
					<th scope="col">Country</th>
					<th scope="col">State</th>
					<th scope="col">City</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty employeeList}">
					<tr>
						<td colspan="7" class="text-center">No Details Found</td>
					</tr>
				</c:if>
				<c:forEach items="${ employeeList}" var="employee">
					<tr>
						<td>${employee.name }</td>
						<td>${employee.companyName }</td>
						<td>${employee.contactNumber }</td>
						<td>${employee.gender }</td>
						<td>${employee.country }</td>
						<td>${employee.state }</td>
						<td>${employee.city }</td>
						<td><a href="edit?employee=${employee.id }" class="text-warning"><span
								class="material-icons"> create </span></a></td>
						<td><a href="delete?employee=${employee.id }" class="text-danger"><span
								class="material-icons"> delete_forever </span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="registartionPage" class="btn btn-lg btn-success"><span
			class="material-icons"> how_to_reg </span> Registration Page</a>
	</div>
</body>
</html>