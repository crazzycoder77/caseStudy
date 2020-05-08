<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regsitartion Page</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
	<form:form method="post" modelAttribute="employee">
		<fieldset class="form-group">
			<form:label path="name">Name</form:label>
			<form:input path="name" required="required" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="companyName">Company Name</form:label>
			<form:input path="companyName" required="required" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="contactNumber">Contact Number</form:label>
			<form:input path="contactNumber" required="required" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="gender">Gender</form:label>
			<form:radiobuttons path="gender" items="${gender}" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="country">Country</form:label>
			<form:select path="country">
				<form:option value="NONE" label="Select" />
			</form:select>
		</fieldset>
		<fieldset class="form-group">
			<form:label path="state">State</form:label>
			<form:select path="state">
				<form:option value="NONE" label="Select" />
			</form:select>
		</fieldset>
		<fieldset class="form-group">
			<form:label path="city">City</form:label>
			<form:select path="city">
				<form:option value="NONE" label="Select" />
			</form:select>
		</fieldset>
	</form:form>
</body>
</html>