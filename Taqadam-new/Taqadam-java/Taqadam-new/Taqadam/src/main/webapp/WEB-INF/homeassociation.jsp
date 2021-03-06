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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>project</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
        #information {
            background-color: #97a396;
        }

        /* #personalPicture{
        width: 200px;
        height: 200px;
    } */
        .col-3 {
            /* background-color:#224c3c; */
            border-radius: 18px;
        }

        /* for picture */
        .flip-card {
            background-color: transparent;
            width: 300px;
            height: 200px;
            border: 1px solid #f1f1f1;
            perspective: 1000px;
            /* Remove this if you don't want the 3D effect */
        }

        /* This container is needed to position the front and back side */
        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.8s;
            transform-style: preserve-3d;
        }

        /* Do an horizontal flip when you move the mouse over the flip box container */
        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        /* Position the front and back side */
        .flip-card-front,
        .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden;
            /* Safari */
            backface-visibility: hidden;
        }

        /* Style the front side (fallback if image is missing) */
        .flip-card-front {
            background-color: #bbb;
            color: black;
        }

        /* Style the back side */
        .flip-card-back {
            background-color: dodgerblue;
            color: white;
            transform: rotateY(180deg);
        }

        /* end picture */
        .edit {
            background-color: #e1c733;
            width: 132px;
            height: 29px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 20px;
        }

        .container,
        .container-fluid,
        .container-lg,
        .container-md,
        .container-sm,
        .container-xl,
        .container-xxl {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }

        .col-3 {
            border-radius: 0 !important;
        }

        .card {
            background-color: #224c3c;
            color: white;
        }
        .container, .container-lg, .container-md, .container-sm {
    max-width: 1300px !important;
}
    </style>
</head>

<body style="background-color: wheat;">

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
                        <a class="nav-link text-white fs-5" href="/main">Home </a>
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
        <div class="container-fluid">
            <div class="row w-100 p-3" style="margin: 0 auto;">
                <div id="information" class="col-9 text-white">
                    <div class="row">
                        <div class="col-12 text-break">Association Name : ${user.userName}</div>
                    </div>
                    <div class="row">
                        <div class="col">${user.email } | ${user.phone } | ${user.location } | ${user.field } </div>
                    </div>
                    <div class="row">
                        <div class="col text-break" style="overflow-y: scroll;height: 85px;">Bio : ${user.bio}</div>
                    </div>
                    <div class="row mt-2">
                        <div class="col">
                            <div class="edit">
                                <a href="/edit/association/${user.id }" style="color:rgb(255, 255, 255)">Edit information</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div style="color: #6a7a69;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="20" fill="currentColor"
                                    class="bi bi-facebook" viewBox="0 0 16 16">
                                    <path
                                        d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="20" fill="currentColor"
                                    class="bi bi-instagram" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="20" fill="currentColor"
                                    class="bi bi-twitter" viewBox="0 0 16 16">
                                    <path
                                        d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <!-- <div class="col m-3"> -->
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <img src="/photo/engineer.jpg" class="img-fluid img-thumbnail"
                                    style="width:298px;height:197px;">
                            </div>
                            <div class="flip-card-back">
                                <h1>Association Picture</h1>
                                <p>Architect & Engineer</p>
                                <p>Just Do It</p>
                            </div>
                        </div>
                    </div>
                    <!-- </div> -->
                </div>
            </div>
        </div>
       < <div class="container-fluid">
        <div id="myTitle">
            <div class="row">
        <c:forEach var = "project" items = "${userfavorite }">
        
                <!-- <div class="col-8"> -->
                <section class="card container-fluid col-3 mx-2 mb-2" style="width: 18rem;">
                    <img class="card-img-top" src="/photo/engineer.jpg">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${project.title }"/></h5>
                        <p class="card-text"><c:out value="${project.field }"/></p>
                        <div class="row" style="display: flex;justify-content: space-around">
                            <div class="col-6 ">
                                <a href="/project/details/${project.id}" class="btn btn-warning fs-5" style="height: 50px;width: 160px;">Project Details</a>
                            </div>
                            <div
                                class="col-2 bg-warning rounded-circle d-flex justify-content-center align-middle text-black fs-5">
                                <p class="mt-2"><c:out value="${project.avg }"></c:out> </p>
                            </div>
                        </div>
                        <!-- </div> -->
                    </div>
                </section>
                </c:forEach>
            </div>
        </div>
		</div>



</body>

</html>