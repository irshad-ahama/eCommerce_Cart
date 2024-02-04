<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<%@include file="include/head.jsp"%>
</head>
<body>
<%@include file="include/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my.S">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">

					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Enter Your Email" required>
					</div>
					<div class="form.group">
						<label>Password</label> <input type="password"
							class="form-control" name="login-password"
							placeholder="*********" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn-primary">login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="include/footer.jsp"%>
</body>
</html>