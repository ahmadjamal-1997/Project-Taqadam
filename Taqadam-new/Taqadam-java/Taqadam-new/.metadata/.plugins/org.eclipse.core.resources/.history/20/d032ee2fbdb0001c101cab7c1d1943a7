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
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
        <div class="container-fluid main">
        <header >
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #b4bcb2;width:100%;">
                <div class="container-fluid">
                    <img src='/photo/taqdam-01.png' height="45" alt="movie_logo">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon" style="color: white;"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a href="/" class="btn outline-dark btn-sm ms-3" style="color:black; font-size:16px;">Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                    style="color: black;font-size:16px;margin-left: 7px;">
                                    Specialities
                                </a>
                                <ul class="dropdown-menu active" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="/category/action">Action</a></li>
                                    <li><a class="dropdown-item" href="/category/drama">Drama</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="" class="btn outline-dark btn-sm ms-3" style="color:black; font-size:16px;">Companies</a>
                            </li>

                            <li class="nav-item">
                                <a href="" class="btn outline-dark btn-sm ms-3" style="color:black; font-size:16px;">Associations</a>
                            </li>
                        </ul>
                        <div class="nav-item">
                            <a href="" class="btn btn-outline-secondary" style="font-size:16px;color: black;">Logout</a>
                        </div>
                        
                    </div>
                </div>
            </div>
        </header>
            
        <div class="container main">
         <div class="row">
            <div class="col-12">
          <img src="/photo/main.png" alt="Notebook" style="width:100%; max-height: 300px;">
          <div class="content">
            <h1>Feature Project:<br>${thisProject.title}</h1>
            <p>${thisProject.description}</p>
          </div>
        </div>
        </div>
        </div>
        <h2>Top Rated Projects</h2>
        <div class="container-fluid new">
            <div class="row">
                <div class="card col-3 mx-2" style="width: 18rem;">
                    <img class="card-img-top" src="/photo/main.png " alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <div class="row" style="display: flex;">
                          <div class="col-7 mx-3">
                      <a href="#" class="btn btn-warning fs-5" style="height: 50px;">Go somewhere</a>
                      </div>
                      <div class="bg-warning col-3 rounded-circle d-flex justify-content-center align-middle text-black fs-5">
                        <p class="mt-2">5</p>
                    </div>
                    </div>
                    </div>
                  </div>
            </div>
        </div>
        
        
</body>
</html>