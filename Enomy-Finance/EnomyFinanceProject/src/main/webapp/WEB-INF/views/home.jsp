<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy Finance | Home</title>
    <link href="css/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<%@ include file="header.jsp" %>
<body class="signup-page" style="background-image: url('images/backgroundimage.jpg'); background-size: cover;">
<div class="container">
    <div class="form-container">
        <div class="image-placeholder">
            <!-- You can customize this welcome text -->
            <h1 class="text-center animate__animated animate__fadeInDown">Welcome to Enomy Finance</h1>
        </div>
        <div class="signup-container text-center">
            <!-- Two buttons with animations -->
            <a href="<%=request.getContextPath() %>/signup" class="btn btn-primary btn-lg animate__animated animate__fadeInLeft">Sign Up</a>
            <a href="<%=request.getContextPath() %>/signin" class="btn btn-secondary btn-lg animate__animated animate__fadeInRight">Sign In</a>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<!-- Add Animate.css for animations -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</body>
</html>
