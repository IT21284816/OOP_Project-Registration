<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User Profile</title>
    
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style type="text/css">
        table {
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <br><br>
    <center><h3>User Profile Update</h3></center>

    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String userName = request.getParameter("uname");
        String password = request.getParameter("pass");
    %>
    
    <div class="container">
        <form action="update" method="post">
            <table class="table table-bordered">
                <tr>
                    <td style="font-weight: bold">ID</td>
                    <td><input type="text" name="cusid" value="<%= id %>" readonly class="form-control"></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Name</td>
                    <td><input type="text" name="name" value="<%= name %>" class="form-control" required></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Email</td>
                    <td><input type="email" name="email" value="<%= email %>" class="form-control" required></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Phone number</td>
                    <td><input type="text" name="phone" value="<%= phone %>" class="form-control" required></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">User name</td>
                    <td><input type="text" name="uname" value="<%= userName %>" readonly class="form-control"></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Password</td>
                    <td><input type="password" name="pass" value="<%= password %>" readonly class="form-control"></td>
                </tr>        
            </table>
            <div class="text-right"> <!-- Right-align the button -->
                <input type="submit" name="submit" value="Update My Data" class="btn btn-primary">
            </div>
        </form>
    </div>
    
   
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <jsp:include page="footer.jsp" />
</body>
</html>
