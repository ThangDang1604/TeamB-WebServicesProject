<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>
From servlet: ${requestScope.fromservlet }
</h2>
<p><a href='/question1'>Re choose your answer </a></p>
<p>
<a href='/checkuser?logout=yes'>Log out</a>
</p>
</body>
</html>