<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style type="text/css">
        body {
            font-family: Hind SemiBold;
            background-color: #f5f5f5;
        }
        form {           
            margin-top: 50px;
            padding : 40px;
            border-radius:10px;
            background-color: #f2f2f2;
        }
        h1{
        	margin-bottom: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br>

<div class="container d-flex justify-content-center align-items-center" style="min-height: 50vh;">
    <div class="text-center" style="width: 400px;">     
        <form action="login" method="post">
        <h1>Login Page</h1>
        <br><br>
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="Enter your username">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Enter your password">
            </div><br>
            <button type="submit" class="btn btn-primary" name="submit">Login</button>
        </form>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
<jsp:include page="footer.jsp" />
</body>
</html>
