<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
        img{
            max-height: 50px;  
        }
        .form{
            border-radius: 6%;
             display: flex;
             flex-direction: column;
             
             align-items: center;
             background-color: #224c3c;
        }
        .par{
        display:flex;
        justify-content:space-between;
        
        }
    </style>
</head>
<body>
   <body style="background-color: #cbbf98;">
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
                        <a class="nav-link text-white fs-5" href="/home">Home </a>
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
                    
                    	<li class="nav-item">
                    	<div class="dropdown active" >
							  <button class="btn btn-secondary dropdown-toggle active"  style="height:43px;" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
							    Sign Up
							  </button>
							  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							    <li><a class="dropdown-item" href="registration/association">Sign As Association</a></li>
							    <li><a class="dropdown-item" href="registration/student">Sign As Student</a></li>
							    <li><a class="dropdown-item" href="registration/company">Sign As Company</a></li>
							    <li><a class="dropdown-item" href="registration/admin">Sign As Admin</a></li>
							  </ul>
						</div>
                        
                   		</li>
               	 </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid" >
        <div class="row" style="height: 70px;">
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col-3">
            <div class="container">
            <div class="row" style="height:30px;">
            </div>
            	<div class="row">
                <img src="/photo/taqdam-01.png" alt="logo">
                </div>
                <p class="par">Share your creativity to the world<br>connect with engineering companies<br>
                let associations invest and adopt in<br>your projects</p>
                <p class="par">JOIN OUR COMMUNITY NOW!</p>
                <p class="par fs-2"><i class="fa fa-facebook-f"></i><i class="fa fa-twitter"></i><i class="fa fa-instagram"></i></p>  
            </div>
            </div>
            <div class="col-3 form">
                    <h3 style="color: white;">Login Now</h3>

                <div class="container">
                <form method="POST" action="/login">
                <div class="row mb-3 mt-2" style="height:50px">       
           			 <input type="text" id="email" name="username" placeholder="User Name"/>
      			</div>
      
            <div class="row mb-3 mt-2" style="height:50px">
            <input type="password" id="password" name="password" placeholder="Password"/>
            </div>
            <div class="row mb-3" style="height:20px">
            </div>
            <div class="row mb-3">
       		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
       		 <input type="submit" class="btn btn-warning" value="Login!"/>
       		 </div>
    			</form>              
                    </div> 
            </div>
        </div>
    </div>
</body>
</html>