<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit information for company</title>
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
   <body style="background-color: #cbbf98;">
    <div class="container" >
    		<div class="row" style="height:100px"></div>
    		<div class="row">
    		<div class="col-2"></div>
   				 <div class="col-3">
   				 	<div class="row" style="height:50px"></div>
   				 	<div class="row">
                	<img src="/photo/taqdam-01.png" alt="logo">
                	<p class="fs-3">Edit information for company!<p>
                	</div>
                 </div>
                 <div class="col-3 form">
                
                <form:form method="POST" action="/edit/${company.id}" modelAttribute="user">
                <input type="hidden" name="_method" value="put">
                    <p><form:errors path="user.*"/></p>
                    
                    <div class="row mb-3">
                            <form:input placeholder="User Name"  path="userName"/>                       
                    </div>
                    <div class="row mb-3">                  
                            <form:input placeholder="phone" path="phone"/>                  
                    </div>
                    <div class="row mb-3">             
                            <form:input placeholder="location" path="location"/>                     
                    </div>
                    <div class="row mb-3">                   
                       <form:input placeholder="field" path="field"/>                   
                    </div>
                    <div class="row mb-3">                   
                        <form:input  placeholder="bio" path="bio"/>                   
                    </div>
                    <div class="row mb-3">
                    <input type="submit" class="btn btn-warning mb-3" value="Create"/>
                    </div>
                    </form:form>
                    </div> 
                   </div>
           
        </div>
</body>
</html>