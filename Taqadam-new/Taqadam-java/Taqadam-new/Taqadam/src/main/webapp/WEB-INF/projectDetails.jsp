<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>project</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
                        <div class="col-12 text-break">Project Name : ${thisProject.title}</div>
                    </div>
                    <div class="row">
                        <div class="col">${thisProject.field}</div>
                    </div>
                    <div class="row">
                        <div class="col text-break" style="overflow-y: scroll;height: 100px;">field : ${thisProject.description}</div>
                    </div>
                    <div class="row">
                    <c:choose>
     
                           <c:when test="${name == 'ROLE_STUDENT'}">
        					 </c:when>          
                           <c:otherwise>
                           <c:if test="${count == 0  }">
                           <button class="col-2 btn btn-warning mx-2" ><a href="/addtolist/${thisProject.id}" style="text-decoration: none;color:black;">Add to Favorites</a></button>
                           </c:if>
                           </c:otherwise>
                           </c:choose>
                           
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
                                <h1>Project Picture</h1>
                                <p>Architect & Engineer</p>
                                <p>Just Do It</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
     	<c:choose>
            <c:when test="${name == 'ROLE_STUDENT'}">
        					 </c:when>
     					 
     					 <c:otherwise> 
     					 <form action="/rate/${thisProject.id}" method="POST">
     					 <div class="container-fluid mt-2">
                       		<div class="row">
                           <div class="col-1 mb-2  d-flex justify-content-center"" >1</div>
                              <input type="range" class="col-6 mb-2" min="0" max="10" step="1" name="range" id="customRange3">
                           <div class="col-1 d-flex justify-content-center">10</div>
                           <div class="col-2 mb-2  d-flex justify-content-start align-items-center">
                                     			<button type="submit" class="btn btn-secondary ">Rank</button>
                                   				 <span style="font-size: 15px; font-weight: bold;margin-left:10px;">${avg}</span>      
                                    		</div>
                                   		</div>
                                   </div>
                                </form>
                                 <div class="container">
                                 <div class="row border ">
                                 <c:forEach var="comment" items="${comments}">
                                    	<div class="row ">
                                    		<div class="col-4 mb-2 d-flex justify-content-start align-items-center">
                                
                                <p><c:out value="${comment.user.userName}"></c:out> -- <c:out value="${comment.comment}"></c:out> -- <fmt:formatDate value="${comment.createdAt}" type="date" pattern="yyyy-MM-dd"/></p>
                                </div>
                                </div>
                            	
                                </c:forEach>
                                </div>
                            	</div>
                                <div class="container">
                                    	<div class="row mt-3">
                                    		<div class="col-12 mb-2  d-flex justify-content-start align-items-center">
                                 <form action="/comment/${thisProject.id }" method="POST">
                          			 <p><input name="comment">
                            		<input type="submit" class="btn btn-secondary mx-1" value="Add a Comment!"/></p>
                           		</form>
                           </div>
                               </div>
                                   </div>     
                           </c:otherwise>
     					 </c:choose>
</body>
</html>