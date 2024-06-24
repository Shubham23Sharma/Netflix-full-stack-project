<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css"
	rel="stylesheet" />
</head>
<body>

	<%
	String adminMsg = (String) request.getAttribute("adminMsg");
	%>

	<section class="vh-100" style="background-color: #9A616D;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img
									src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
									alt="login form" class="img-fluid"
									style="border-radius: 1rem 0 0 1rem;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">

									<%
									if (adminMsg != null) {
									%>
									<h5 style="color: red;"><%=adminMsg%></h5>

									<%
									}
									%>
									<form action="adminLogin" method="post">
									
									
									<label>
									UserName:
									<input type="text" placeholder="Enter your Email" name="adminEmail">									
									</label> <br> <br>
									
									<label>
									Password:
									<input type="password" placeholder="Enter your Password" name="adminPassword">									
									</label> <br> <br>
									
									<input type="submit" value="LogIn" style="margin-left: 30px">
									<a href="#" style="margin-left: 50px;">Forgot Password?</a>
									
									
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>