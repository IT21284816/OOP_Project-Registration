<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Add custom CSS for header styling -->
    <style>
        .header {
            background-color: #0250a3;
            color: #fff;
            padding: 15px;
        }
        .header a {
            color: #fff;
            margin-right: 20px;
        }
    </style>
</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-md navbar-dark">
        <h4><a href="#">Online help desk</a></h4>
        
        <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
                <a href="#" class="nav-link"><i class="fas fa-home"></i> Home</a>
            </li>            
            <li class="nav-item">
                <a href="#" class="nav-link"><i class="fas fa-envelope"></i> Contact Us</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link"><i class="fas fa-info-circle"></i> About Us</a>
            </li>
            <li class="nav-item">
                <a href="http://localhost:8090/Registration/login.jsp" class="nav-link"><i class="fas fa-sign-in-alt"></i> Login</a>
            </li>
            <li class="nav-item">
                <a href="http://localhost:8090/Registration/userinsert.jsp" class="nav-link"><i class="fas fa-user-plus"></i> Register</a>
            </li>
        </ul>
    </nav>
</header>
</body>
</html>
