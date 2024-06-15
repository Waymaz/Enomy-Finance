<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Header</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
    .navbar-nav .nav-item .nav-link {
      color: #495057;
      border: 1px solid #ced4da;
      padding: 8px 16px;
      margin: 0 5px;
      border-radius: 4px;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    .navbar-nav .nav-item .nav-link:hover {
      background-color: #007bff;
      color: #fff;
    }

    /* Style for the "Sign Up" button */
    .navbar-nav .nav-item.signup .nav-link {
      border: 1px solid #007bff;
      background-color: #fff;
      color: #007bff;
    }

    .navbar-nav .nav-item.signup .nav-link:hover {
      background-color: #007bff;
      color: #fff;
    }

    /* Added margin to the left of logo and buttons */
    .navbar-brand,
    .navbar-nav .nav-item {
      margin-left: 10px;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="images/EnomyFinanceicon2.png" width="100" height="30" class="d-inline-block align-top" alt="Logo">
    Home
  </a>

  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a href= "<%=request.getContextPath() %>/signup" class="nav-link" href="sign-up.jsp">Sign Up</a>
      </li>
      <li class="nav-item signup">
        <a href= "<%=request.getContextPath() %>/signin" class="nav-link" href="sign-in.jsp">Sign In</a>
      </li>
    </ul>
  </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
