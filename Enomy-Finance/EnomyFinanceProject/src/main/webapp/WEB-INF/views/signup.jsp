<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up | Enomy Finance</title>
    <link href="css/styles.css" rel="stylesheet" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<%@ include file="header.jsp" %>
<body class="signup-page" style="background-image: url('images/backgroundimage.jpg'); background-size: cover;">
<div class="container">
    <div class="form-container">
        <div class="image-placeholder">
            <img src="images/signupimg.png" class="img-fluid" alt="quote">
        </div>
        <div class="signup-container">
        <c:url var="post_url" value="/signup" />
            <form:form action="signup" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="mb-3">
                    <label for="userName" class="form-label">Full Name:</label>
                    <input type="text" class="form-control" id="userName" name="userName" required>
                </div>
                <div class="mb-3">
                    <label for="emailAddress" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="emailAddress" name="emailAddress" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="mb-3">
                    <label for="contactInfo" class="form-label">Contact Information:</label>
                    <input type="text" class="form-control" id="contactInfo" name="contactInfo" required>
                </div>
                <button id="submit1" type="submit" class="btn btn-primary">Submit</button>
                <a href="<%=request.getContextPath() %>/signin" class="btn btn-link mt-3">Sign In</a>
            </form:form>
            <span class="text-danger">${errorMessage}</span>
			    </div>			                
			</div>  
        </div>
<%@ include file="footer.jsp" %>        
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
