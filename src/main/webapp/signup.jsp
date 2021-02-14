<%--
  Created by IntelliJ IDEA.
  User: Аяулым
  Date: 2/8/2021
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<h1>Registration</h1>
<a class="btn btn-primary" href="/JavaEETest_war_exploded">Main</a>
<a class="btn btn-primary" href="login">Sign in</a>
<form action="signup" method="post">
    <div class="form-group">
        <label>Email</label>
        <input type="text" name="email" class="form-control" required>
    </div>
    <div class="form-group">
        <label>Username</label>
        <input type="text" name="user" class="form-control" required>
    </div>
    <div class="form-group">
        <label>Password</label>
        <input type="password" name="passwd" class="form-control" required>
    </div>
    <input type="submit" class="btn btn-primary">
</form>
<div>
    <%
        if (request.getMethod().equals("POST")) {
            if (!request.getParameter("email").equals("")) {
                out.print("<p>user: " + request.getParameter("email") + "</p>");
            }
            if (!request.getParameter("user").equals("")) {
                out.print("<p>user: " + request.getParameter("user") + "</p>");
            }
            if (!request.getParameter("passwd").equals("")) {
                out.print("<p>passwd: " + request.getParameter("passwd") + "</p>");
            }
        }
    %>
</div>
</body>
</html>
