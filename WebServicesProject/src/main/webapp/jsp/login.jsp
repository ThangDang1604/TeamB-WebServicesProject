<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<a href='/index.html'>Home</a>
<h2>Login</h2>
<form action='/checkuser' method='post'>
<input type='text' name='user' value=''><br>
<input type='text' name='pass' value=''><br>
<input type='submit' name='ok' value='OK'><br>
</form>
</body>
</html> 