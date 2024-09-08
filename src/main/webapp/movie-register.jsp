<%@page import="java.util.Base64"%>
<%@page import="com.jspider.movieflex_servlet_project.dto.Movie"%>
<%@page import="java.util.List"%>
<%@page import="com.jspider.movieflex_servlet_project.dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<style>
*{
margin: 0px;
padding: 0px;
box-sizing: border-box;
color: white;

}
a{

text-decoration: none;


}

ul a{
color: white;
font-weight: bold;
font-size: 25px;

}
.section{
	
	display: flex;
	flex-direction:column;
	justify-content: center;
	align-items: center;
	position:relative;
	top: 25vh;
	font-weight: bold;
	opacity: 10;

}
.background {
    background: url('https://png.pngtree.com/thumb_back/fh260/background/20191113/pngtree-blue-film-technology-film-background-image_322042.jpg') no-repeat center center fixed;
	background-size: cover;
	background-attachment:fixed;
   /*  position: absolute;
    top: 0;
    left: 0; */
    width: 100%;
    height: 100%;
   	z-index: -1;
    opacity: 0.9; /* Adjust opacity to make the image more transparent */
}

.transparent-input::placeholder {
    font-weight: bold;
    color: rgba(255, 255, 255, 0.7); /* Optional: Adjust color and transparency */
    font-size: 2.5vh;
    
}
.inline-container{
	
	display: flex;

}
p{
color: black;
}


</style>
<body>


<%
	MovieDao dao = new MovieDao();

	List<Movie> movies = dao.getAllMovieDetailsDao();
	%>
	
	<%
	String adminMsg = (String) request.getAttribute("adminMsg");
	%>
	<div class="background">
	<div style="position:relative;  ">
	
	
	
	<ul style="display: flex; justify-content: space-around; list-style-type: none; ">
		<li><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwrek_NkgFxYQnQ0jzLnZ1UVlIHVWUek0lLA&s" height="100vh" width="100vw"></li>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="#">About Us</a> </li>
		<li><a href="#">Contact Us</a></li>     
		<li><form action="user-login.jsp" method="post"><input type="submit" value="User Signin" name="userSignIn" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 40px; width: 100px; font-size: 18px; cursor: pointer;" ></form></li>
		<li><form action="admin-login.jsp" method="post"><input type="submit" value="Admin Signin" name="adminSignin" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 40px; width: 120px; font-size: 18px; cursor: pointer;" ></form></li>
		
	</ul>
	
	
	

<div class="cardsmovie" style="display: flex; flex-wrap: wrap; justify-content: center; position: relative; gap:40px; ">

<div class="card" style="width: 15rem; ">
  <a href="#"  ><img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>


<div class="card" style="width: 15rem; ">
 <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
  
</div>

<div class="card" style="width: 15rem; ">
  <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>

<div class="card" style="width: 15rem; ">
  <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>

<div class="card" style="width: 15rem; ">
  <a href="#"  ><img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>

<div class="card" style="width: 15rem; ">
  <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>

<div class="card" style="width: 15rem; ">
  <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>

<div class="card" style="width: 15rem; ">
 <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>
<div class="card" style="width: 15rem; ">
 <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>
<div class="card" style="width: 15rem; ">
 <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>
<div class="card" style="width: 15rem; ">
 <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>
<div class="card" style="width: 15rem; ">
 <a href="#"  > <img src="https://starworldcinemas.com/wp-content/uploads/2024/07/Stree-2.jpg" class="card-img-top" alt="..." height="300vh"></a>
  <div class="card-body">
    <p class="card-text">Stree 2</p>
  </div>
</div>

</div>
</div>
</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>
</html>