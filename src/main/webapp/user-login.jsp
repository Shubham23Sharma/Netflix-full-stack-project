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
    background: url('https://techovedas.com/wp-content/uploads/2024/04/netflix-octobre-contenus-2022.jpg') no-repeat center center fixed;
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


display: flex;
justify-content: center;
align-items: center;
flex-direction: column;
color: white;
background-color: grey;
border: 2px solid grey;


}

.RememberMe{
display: flex;


}

</style>
</head>
<body>
		<div class="background"></div>
		<img alt="" src="png-transparent-netflix-logo-netflix-television-show-streaming-media-film-netflix-logo-television-text-trademark-thumbnail-removebg-preview.png" height="80vh">
		
		<form action="startpage">
		
		<div class="signinform">
		
		<h2>Sign In</h2>
		
		<input type="text" placeholder="Email or mobile number" name="email"> <br> <br>
		
		<input type="password" placeholder="password" name="password"> <br> <br>
		
		<input type="submit" value="Sign In" name="signin">
		
		<p>OR</p>
		
		<input type="submit" value="Use a sign-in code">
		
		<p>Forgot Password?</p>
		<div class="RememberMe">
		<input type="checkbox" value="Remember me" id="rem">
		<label for="rem">Remember Me
		</label>
		</div>
		

		</div>
		</form>
</body>
</html>