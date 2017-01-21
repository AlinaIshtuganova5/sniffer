<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2>Login</h2>
<form action="j_security_check" method="POST">
    <label>Login</label>
    <input name="j_username" type="text">
    <label>Password</label>
    <input name="j_password" type="password">
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
</body>
</html>
