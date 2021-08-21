<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.ArrayList" %>   
 	<%@ page import="data.QuestionData" %>  
 	
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Result</title>
		
	</head>
	<body>
	<h2>Result</h2>
<% 

 int re1,re2,re3,re4,re5,re6,re7,re8,re9,re10,re11,re12, re13, re14, re15, re16, re17, re18, re19;
	
	re1=Integer.parseInt(request.getParameter("q1"));
	re2=Integer.parseInt(request.getParameter("q2"));
	re3=Integer.parseInt(request.getParameter("q3"));
	re4=Integer.parseInt(request.getParameter("q4"));
	re5=Integer.parseInt(request.getParameter("q5"));
	re6=Integer.parseInt(request.getParameter("q6"));
	re7=Integer.parseInt(request.getParameter("q7"));
	re8=Integer.parseInt(request.getParameter("q8"));
	re9=Integer.parseInt(request.getParameter("q9"));
	re10=Integer.parseInt(request.getParameter("q10"));
	re11=Integer.parseInt(request.getParameter("q11"));
	re12=Integer.parseInt(request.getParameter("q12"));
	re13=Integer.parseInt(request.getParameter("q13"));
	re14=Integer.parseInt(request.getParameter("q14"));
	re15=Integer.parseInt(request.getParameter("q15"));
	re16=Integer.parseInt(request.getParameter("q16"));
	re17=Integer.parseInt(request.getParameter("q17"));
	re18=Integer.parseInt(request.getParameter("q18"));
	re19=Integer.parseInt(request.getParameter("q19"));
	
	out.println("Your result:	"+ (re1+re2+re3+re4+re5+re6+re7+re8+re9+re10+re11+re12+re13+re14+re15+re16+re17+re18+re19));
%>
	

</body>
</html>