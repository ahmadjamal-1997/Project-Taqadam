<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script>
		$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTitle section").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	</script>
    <style>
       
		
        
        body {
          font-family: Arial;
          font-size: 17px;

        }
        .row>*{
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
        
        .main {
          position: relative;
          margin: 0 auto;
          max-width: 1500px !important;
         
        }
        
        
        
        .main .content {
          position: absolute;
          bottom: 0;
          background-color:#224c3c; 
          opacity: 80%;
          color: #f1f1f1;
          width: 30%;
          margin: 30px;
        }
        .thisnav{
            background-color: #224c3c;
        }

        .card{
            background-color: #224c3c;
            color: white;
        }
        #rate{
            color: black;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 17px;
            border-radius: 50%;
            max-height: 30px;
        }
        
        .container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
    padding-left: 0 !important;
    padding-right: 0 !important;
}
      
        </style>
        </head>
        <body>
             <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #b4bcb2;">
        <div class="container">

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Navbar brand -->
                <a class="navbar-brand mt-2 mt-lg-0" href="/home">
                    <img src="/photo/taqdam-01.png" height="45" alt="taqadm_logo">
                </a>
                <!-- Left links -->
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-white fs-5" href="/user/${user.id }">My Profile </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white fs-5" href="#">About Us</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link text-white fs-5" href="#">Contact Us</a>
                    </li>
                </ul>
                <!-- Left links -->
            </div>
            <div class="d-flex align-items-center ">
                <ul class="nav nav-tabs " style="border: none;">
                    <li class="nav-item active me-5">
	                    <form class="d-flex input-group w-auto " style="height:44px;">
						      <input
						        type="search"
						        class="form-control rounded"
						        placeholder="Search"
						        aria-label="Search"
						        aria-describedby="search-addon"
						        id="myInput"
						      />
						      <span class="input-group-text border-0" id="search-addon">
						        <i class="fa fa-search ms-2" ></i>
						      </span>
						    </form>
                    	</li>
                    	<li class="nav-item">
                    	<form id="logoutForm" method="POST" action="/logout" >
					        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					        <input class="btn btn-outline-secondary active" type="submit" value="Log out!" />
					    </form>
                        
                   		</li>
               	 </ul>
            </div>
        </div>
    </nav>
    
            
        
        
         <div class="container">
         <h2>Top Rated Projects</h2>
        <div class="row">
         
                  <c:forEach var = "project" items = "${topProjects }">
        
  <section class="card col-3 mx-3 mb-3">
  
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title"><c:out value="${project.title }"></c:out> </h5>
      <p class="card-text"> <c:out value="${project.description }"/> </p>
       <div class="row" style="display: flex;">
  		  <div class="col-7 mx-3">
         <a href="/project/details/${project.id}" class="btn btn-warning fs-5" style="height: 50px;">Project Details</a>
         </div>
         <div class="bg-warning col-3 rounded-circle d-flex justify-content-center align-middle text-black fs-5">
           <p class="mt-2"><c:out value="${project.avg }"></c:out></p>
       </div>
       </div>
    </div>
 </section>
  </c:forEach>
       </div> 
       </div>
        
       <div class="container">
       <h3>ALL Projects</h3>
       <div id="myTitle">
       
        <div class="row">
         
                  <c:forEach var = "project" items = "${projects }">
        
  <section class="card col-3 mx-3 mb-3">
  
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title"><c:out value="${project.title }"></c:out> </h5>
      <p class="card-text"> <c:out value="${project.description }"/> </p>
       <div class="row" style="display: flex;">
  		  <div class="col-7 mx-3">
         <a href="/project/details/${project.id}" class="btn btn-warning fs-5" style="height: 50px;">Project Details</a>
         </div>
         <div class="bg-warning col-3 rounded-circle d-flex justify-content-center align-middle text-black fs-5">
           <p class="mt-2"><c:out value="${project.avg }"></c:out></p>
       </div>
       </div>
    </div>
 </section>
  </c:forEach>
       </div> 
       </div>
       </div>
     
</body>
</html>