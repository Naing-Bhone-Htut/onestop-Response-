<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info Cookies</title>
<link rel="stylesheet" href="./resource/bootstrap/css/bootstrap.min.css" />
</head>
<body>

	<div class="container mt-5">
		<div class="row mb-3">
			<div class="col-4">
				<a href="info" class="btn btn-success">Show Info</a>
			</div>
		</div>
		
		<div class="row">
			<div class="col-3">
				<p>Name</p>
				<p>Value</p>
				<p>Version</p>
			</div>
			<div class="col-3">
				<p><%= session.getAttribute("name") %></p>
				<p><%= session.getAttribute("value") %></p>
				<p><%= session.getAttribute("version") %></p>
			</div>
		</div>
	</div>

</body>
</html>