<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style type="text/css">
       
        form {
            width: 500px;
            text-align: left;
        }
        .center-button {
            display: flex;
            justify-content: center;
        }
    </style>
    
    <!-- Validations -->
    <script>
    function validateForm() {
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var phone = document.getElementById("phone").value;
        var uid = document.getElementById("uid").value;
        var psw = document.getElementById("psw").value;
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

        if (name.trim() === "") {
            alert("Name is required");
            return false;
        }

        if (!email.match(emailPattern)) {
            alert("Invalid email address");
            return false;
        }

        if (phone.trim() === "" || isNaN(phone)) {
            alert("Invalid phone number");
            return false;
        }

        if (uid.trim() === "") {
            alert("Username is required");
            return false;
        }

        if (psw.trim() === "") {
            alert("Password is required");
            return false;
        }

        alert("Registration successful!");
        return true;
    }
</script>
    
    
    
    
</head>
<body>
	<jsp:include page="header.jsp" /><br><br>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="insert" method="post" onsubmit="return validateForm();">

                    <h1 class="text-center">Registration Form</h1>
                    <br><br>
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" >
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" >
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" >
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="uid" name="uid" placeholder="User Name" >
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="psw" name="psw" placeholder="Password" >
                    </div>
                    <div class="center-button">
                        <button type="submit" class="btn btn-primary" name="submit">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
    <jsp:include page="footer.jsp" />
</body>
</html>
