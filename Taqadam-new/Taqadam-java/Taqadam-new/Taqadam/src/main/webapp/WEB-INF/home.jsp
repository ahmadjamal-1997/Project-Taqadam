<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Home Page</title>
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
                        <a class="nav-link text-white fs-5" href="/home">Home</a>
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
                        <a class="nav-link active " aria-current="page" href="login">Log in</a>
                    </li>
                    <li class="nav-item active ms-3">
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
    <div class="container-fluid mt-3">
        <div class="row top justify-content-between ">
            <div class="col-5 ms-5 eng " text-break>
                <h1>Are You An Engineer ?</h1>
                <p class="text-white">Taqadam website provides a comperhensive 
                community including engineering student from various specialties, 
                companies interested in exploration new creative engineers and associations
                 who are willing to open their doors to adopt and invest in the creative ideas 
                 /projects from you which gives you the chance to share your graduation projects andany other creative project / research with it`s details.</p>
                <div class="d-flex justify-content-center mt-5 ">
                    <button class="rounded w-50 " type="submit"  ><a href="/registration/student" style="text-decoration: none;">Join Us To Start Your Journey</a></button>
                </div>
            </div>
            <div class="col-5 ">
                <img src="/photo/Home.png" class="img-fluid w-75 " alt="Engineer" />
            </div>
        </div>
        <div class="container-fluid rate">
            <div class="row  mt-5">
                <div class="row text-white mt-1">
                    <h2 class="d-flex justify-content-center">FEED BACK</h2>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-3 g-4 d-flex justify-content-center ">
                <div class="col w-25 mb-2">
                    <div class="card">
                        <img src="./photo/abed.jpg" class="card-img-top" alt="abed">
                        <div class="card-body">
                            <h5 class="card-title">Abd Al-Hadi Numan</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in
                                to additional content.</p>
                        </div>
                    </div>
                </div>
                <div class="col w-25 mb-2">
                    <div class="card">
                        <img src="./photo/maher.jpg" class="card-img-top" alt="maher">
                        <div class="card-body">
                            <h5 class="card-title">Maher Abd Al-Kareem</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in
                                to additional conte.</p>
                        </div>
                    </div>
                </div>
                <div class="col w-25 mb-2">
                    <div class="card">
                        <img src="./photo/ahmad.jpg" class="card-img-top" alt="ahmad">
                        <div class="card-body">
                            <h5 class="card-title">Ahmad Jamal</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in
                                to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="text-center text-lg-start bg-light text-muted">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
            <!-- Left -->
            <div class="me-5 d-none d-lg-block">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href="" class="me-4 text-reset">
                    <i class="fa fa-facebook-f"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fa fa-twitter"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fa fa-google"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fa fa-instagram"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fa fa-linkedin"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fa fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <i class="fas fa-gem me-3"></i>Company name
                        </h6>
                        <p>
                            Here you can use rows and columns to organize your footer content. Lorem ipsum
                            dolor sit amet, consectetur adipisicing elit.
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Products
                        </h6>
                        <p>
                            <a href="#!" class="text-reset">Angular</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">React</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Vue</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Laravel</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Useful links
                        </h6>
                        <p>
                            <a href="#!" class="text-reset">Pricing</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Settings</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Orders</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Help</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Contact
                        </h6>
                        <p><i class="fa fa-home me-3"></i> New York, NY 10012, US</p>
                        <p>
                            <i class="fa fa-envelope me-3"></i>
                            taqadam@gmail.com
                        </p>
                        <p><i class="fa fa-phone me-3"></i> + 01 234 567 88</p>
                        <p><i class="fa fa-print me-3"></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
            � 2021 Copyright:
            <a class="text-reset fw-bold" href="https://mdbootstrap.com/">Taqadam.com</a>
        </div>
        <!-- Copyright -->
    </footer>
</body>
</html>