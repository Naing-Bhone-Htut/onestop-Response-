<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cookie</title>
<link rel="stylesheet" href="./resource/bootstrap/css/bootstrap.min.css" />
</head>
<body>

	<div class="container mt-5">
		<div class="row">
			<div class="col-4">
				<form action="cookies">
				
					<label for="name" class="form-label">Name</label>
					<input type="text" name="name" id="name" class="form-control mb-3" />
					
					<label for="name" class="form-label">Value</label>
					<input type="password" name="value" id="value" class="form-control mb-3" />
					
					<label for="name" class="form-label">Version</label>
					<input type="text" name="version" id="version" class="form-control mb-3" />
					
					<input type="submit" value="Submit" class="btn btn-primary" />
				</form>
			</div>
		</div>
	</div>

</body>
</html>