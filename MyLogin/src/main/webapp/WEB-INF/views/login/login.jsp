<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h1>Login Here..!!!</h1><br><br>
<form method="post" action="/firstApp/login">
<label for="userName"> <b>User Name</b></label>
<input type="text" placeholder="userName" name="userName"/><br><br>
<label for="passWord"> <b>PassWord</b></label>
<input type="password"  placeholder="password" name="passWord"/><br><br>
<input type="submit" value="submit/login"/>
<p>New user..? <a href="/login/register.html">Click here</a></p>
<p style="color:red"> ${error} </p>
</form>
</body>
</html>