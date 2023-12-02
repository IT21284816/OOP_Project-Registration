<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="header.jsp" />
    <br><br>
    
    <div class="container">
        
        <center><h3>User Account Delete</h3></center>

        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String userName = request.getParameter("uname");
            String password = request.getParameter("pass");
        %>

        <form action="delete" method="post">
            <table class="table table-bordered">
                <tr>
                    <td>Customer ID</td>
                    <td><input type="text" name="cusid" value="<%= id %>" readonly class="form-control"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= name %>" readonly class="form-control"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="<%= email %>" readonly class="form-control"></td>
                </tr>
                <tr>
                    <td>Phone number</td>
                    <td><input type="text" name="phone" value="<%= phone %>" readonly class="form-control"></td>
                </tr>
                <tr>
                    <td>User name</td>
                    <td><input type="text" name="uname" value="<%= userName %>" readonly class="form-control"></td>
                </tr>
            </table>
            <br>
            <div class="text-right">
            <input type="submit" name="submit" value="Delete My Account" class="btn btn-danger">
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <jsp:include page="footer.jsp" />
</body>
</html>
