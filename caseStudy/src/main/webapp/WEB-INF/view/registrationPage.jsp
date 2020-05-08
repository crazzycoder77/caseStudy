<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="container">
		<h1 class="text-center">Registration Page</h1>
		<form:form method="post" modelAttribute="employee">
			<fieldset class="form-group" class="form-group">
				<form:label path="name">Name</form:label>
				<form:input path="name" required="required" class="form-control" />
				<form:errors path="name" class="text-danger" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="companyName">Company Name</form:label>
				<form:input path="companyName" required="required"
					class="form-control" />
				<form:errors path="companyName" class="text-danger" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="contactNumber">Contact Number</form:label>
				<form:input path="contactNumber" required="required"
					class="form-control" />
				<form:errors path="contactNumber" class="text-danger" />
			</fieldset>
			<div class="row">
				<div class="col-12 col-md-3">
					<fieldset class="form-group">
						<form:label path="gender">Gender</form:label>
						<br />
						<form:radiobuttons path="gender" items="${gender}" />
						<form:errors path="gender" class="text-danger" />
					</fieldset>
				</div>
				<div class="col-12 col-md-3">
					<fieldset class="form-group">
						<form:label path="country">Country</form:label>
						<br />
						<form:select path="country" class="custom-select">
							<form:option value="0" label="Select" />
							<form:options items="${countryList}" />
						</form:select>
						<form:errors path="country" class="text-danger" />
					</fieldset>
				</div>
				<div class="col-12 col-md-3">
					<fieldset class="form-group">
						<form:label path="state">State</form:label>
						<br />
						<form:select path="state" class="custom-select">
							<c:if test="${empty employee.state }">
								<form:option value="0" label="Select" />
							</c:if>
							<c:if test="${not empty employee.state }">
								<form:option value="${employee.state }"
									label="${employee.state }" disabled="true" hidden="true" />
							</c:if>
						</form:select>
						<form:errors path="state" class="text-danger" />
					</fieldset>
				</div>
				<div class="col-12 col-md-3">
					<fieldset class="form-group">
						<form:label path="city">City</form:label>
						<br />
						<form:select path="city" class="custom-select">
							<c:if test="${empty employee.city }">
								<form:option value="0" label="Select" />
							</c:if>
							<c:if test="${not empty employee.city }">
								<form:option value="${employee.city }" label="${employee.city }"
									disabled="true" hidden="true" />
							</c:if>
						</form:select>
						<form:errors path="city" class="text-danger" />
					</fieldset>
				</div>
			</div>
			<input type="submit" value="Save" class="btn btn-lg btn-success" />
			<input type="reset" value="Clear" class="btn btn-lg btn-danger" />
		</form:form>
	</div>
	<script>
		$(document).ready(
				function() {
					var country = $("#country").val();
					$.get("state?country=" + country, function(data) {
						var typeData = data;
						for (loop = 0; loop < typeData.length; loop++) {
							$("#state").get(0).options.add(new Option(
									typeData[loop]["name"],
									typeData[loop]["id"]));
						}

					});
					var state = $("#state option[disabled]:selected").val();
					$.get("city?state=" + state, function(data) {
						var typeData = data;
						for (loop = 0; loop < typeData.length; loop++) {
							$("#city").get(0).options.add(new Option(
									typeData[loop]["name"],
									typeData[loop]["id"]));
						}

					});
				});
		$("#country").change(
				function() {
					var country = $("#country").val();
					$.get("state?country=" + country,
							function(data) {
								$("#state option").remove();
								var typeData = data;
								$("#state").get(0).options.add(new Option(
										"Select", 0));
								for (loop = 0; loop < typeData.length; loop++) {
									$("#state").get(0).options.add(new Option(
											typeData[loop]["name"],
											typeData[loop]["id"]));
								}

							});
				});
		$("#state").change(
				function() {
					var state = $("#state").val();
					$.get("city?state=" + state, function(data) {
						$("#city option").remove();
						var typeData = data;
						$("#city").get(0).options.add(new Option("Select", 0));
						for (loop = 0; loop < typeData.length; loop++) {
							$("#city").get(0).options.add(new Option(
									typeData[loop]["name"],
									typeData[loop]["id"]));
						}

					});
				});
	</script>
</body>
</html>