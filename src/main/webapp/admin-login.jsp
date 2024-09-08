<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">


*{
margin: 0px;
padding: 0px;
box-sizing: border-box;

}

.background {
    background: url('https://png.pngtree.com/thumb_back/fh260/background/20191113/pngtree-blue-film-technology-film-background-image_322042.jpg') no-repeat center center fixed;
    background-size: cover;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
   	z-index: -1;
    opacity: 0.9; /* Adjust opacity to make the image more transparent */
}

.signinform{
	
	
	width: 25vw;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: transparent;
	background-color: #FFFFFF;
	height: 75vh;
	color:black;
	margin-left: 35%;
	border-radius: 25px;

	
}

input{

height: 8vh;
width: 15vw;
border-radius: 15px;


}

::placeholder{

color: rgb(225, 227, 225);

}

a{

text-decoration: none;
color: rgb(225, 227, 225);

}



ul a{
color: white;
font-weight: bold;
font-size: 25px;

}


</style>
</head>
<body>
		<div class="background"></div>
		
		<div style="position:relative;  top: 5vh;">
	
	<ul style="display: flex; justify-content: space-around; list-style-type: none; ">
		<a href="home.jsp"><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwrek_NkgFxYQnQ0jzLnZ1UVlIHVWUek0lLA&s" height="80vh"></a>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="#">About Us</a> </li>
		<li><a href="#">Contact Us</a></li>
		
		<li>
		
		
		<form action="userLogin" method="post"><input type="submit" value="SignIn" name="userSignIn" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 40px; width: 80px; font-size: 18px; cursor: pointer;'" ></form></li>
		
	</ul>
	
	</div>
		<div class="signinform">
		<form action="userLogin" method="post">
		<h2 style="color: black;">Sign In</h2> <br>
		<input type="text" placeholder="Email or mobile number" name="email"> <br> <br>
		<input type="password" placeholder="Password" name="password"> <br> <br>
		<div style="display: flex; position: relative; flex-direction: column; gap:20px; justify-content: center; align-items: center;">
		<input type="submit" value="Sign In" name="signin" style="background-color: red; height: 5vh">
		<p>OR</p>
		<input type="submit" value="Use a sign-in code">
		<p>Forgot Password?</p>
		<div class="RememberMe" style="display: flex;">
		<input type="checkbox" value="Remember me" id="rem" style="height: 2vh; width: 2vw;">
		<label for="rem">Remember Me
		</label>
		</div>
		<p>New to Movieflex?<a href="user-registration.jsp" style="font-weight: bold; color: black;">Sign Up Now</a></p>
	
		</div>
		</form>

	</div>
		
</body>
</html>