<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QuestionList</title>
	</head>

	<body>
	<a href="index.html">Home</a>
	<br>
	<form method='get' action='/questionRe'>
			<h2>It is too easy to live on social security in Finland.</h2>
			<p><input type="radio" name="q1" value="1" required>Totally Disagree</p>
			<p><input type="radio" name="q1" value="2">Disagree</p>
			<p><input type="radio" name="q1" value="3">Not sure</p>
			<p><input type="radio" name="q1" value="4">Agree</p>
			<p><input type="radio" name="q1" value="5">Totally Agree</p>
			
			<h2>The opening hours of trade and other shops must be liberalized.</h2>
			<p><input type="radio" name="q2" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q2" value="2">Disagree</p>
			<p><input type="radio" name="q2" value="3">Not sure</p>
			<p><input type="radio" name="q2" value="4">Agree</p>
			<p><input type="radio" name="q2" value="5">Totally Agree</p>
			
			<h2>Finland needs to move to a basic income that would replace the current minimum level of social security.</h2>
			<p><input type="radio" name="q3" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q3" value="2">Disagree</p>
			<p><input type="radio" name="q3" value="3">Not sure</p>
			<p><input type="radio" name="q3" value="4">Agree</p>
			<p><input type="radio" name="q3" value="5">Totally Agree</p>
			
			<h2>The employee must be guaranteed by law a minimum working time.</h2>
			<p><input type="radio" name="q4" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q4" value="2">Disagree</p>
			<p><input type="radio" name="q4" value="3">Not sure</p>
			<p><input type="radio" name="q4" value="4">Agree</p>
			<p><input type="radio" name="q4" value="5">Totally Agree</p>
			
			<h2>The duration of earnings-related occupational safety and health should be shortened.</h2>
			<p><input type="radio" name="q5" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q5" value="2">Disagree</p>
			<p><input type="radio" name="q5" value="3">Not sure</p>
			<p><input type="radio" name="q5" value="4">Agree</p>
			<p><input type="radio" name="q5" value="5">Totally Agree</p>
			
			<h2>Outside the euro, Finland would do better.</h2>
			<p><input type="radio" name="q6" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q6" value="2">Disagree</p>
			<p><input type="radio" name="q6" value="3">Not sure</p>
			<p><input type="radio" name="q6" value="4">Agree</p>
			<p><input type="radio" name="q6" value="5">Totally Agree</p>
			
			<h2>Food taxation can afford to tighten.</h2>
			<p><input type="radio" name="q7" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q7" value="2">Disagree</p>
			<p><input type="radio" name="q7" value="3">Not sure</p>
			<p><input type="radio" name="q7" value="4">Agree</p>
			<p><input type="radio" name="q7" value="5">Totally Agree</p>
			
			<h2>The state and municipal finances must be balanced primarily by cutting spending.</h2>
			<p><input type="radio" name="q8" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q8" value="2">Disagree</p>
			<p><input type="radio" name="q8" value="3">Not sure</p>
			<p><input type="radio" name="q8" value="4">Agree</p>
			<p><input type="radio" name="q8" value="5">Totally Agree</p>
			
			<h2>Child benefits must be increased and taxed.</h2>
			<p><input type="radio" name="q9" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q9" value="2">Disagree</p>
			<p><input type="radio" name="q9" value="3">Not sure</p>
			<p><input type="radio" name="q9" value="4">Agree</p>
			<p><input type="radio" name="q9" value="5">Totally Agree</p>
			
			<h2>Finland cannot afford social and health services on the current scale.</h2>
			<p><input type="radio" name="q10" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q10" value="2">Disagree</p>
			<p><input type="radio" name="q10" value="3">Not sure</p>
			<p><input type="radio" name="q10" value="4">Agree</p>
			<p><input type="radio" name="q10" value="5">Totally Agree</p>
			
			<h2>NATO membership would strengthen Finland's security policy position.</h2>
			<p><input type="radio" name="q11" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q11" value="2">Disagree</p>
			<p><input type="radio" name="q11" value="3">Not sure</p>
			<p><input type="radio" name="q11" value="4">Agree</p>
			<p><input type="radio" name="q11" value="5">Totally Agree</p>
			
			<h2>Finland needs more police.</h2>
			<p><input type="radio" name="q12" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q12" value="2">Disagree</p>
			<p><input type="radio" name="q12" value="3">Not sure</p>
			<p><input type="radio" name="q12" value="4">Agree</p>
			<p><input type="radio" name="q12" value="5">Totally Agree</p>
			
			<h2>Immigration to Finland must be restricted due to the threat of terrorism.</h2>
			<p><input type="radio" name="q13" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q13" value="2">Disagree</p>
			<p><input type="radio" name="q13" value="3">Not sure</p>
			<p><input type="radio" name="q13" value="4">Agree</p>
			<p><input type="radio" name="q13" value="5">Totally Agree</p>
			
			<h2>Russia's policy of interests is a threat to Finland.</h2>
			<p><input type="radio" name="q14" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q14" value="2">Disagree</p>
			<p><input type="radio" name="q14" value="3">Not sure</p>
			<p><input type="radio" name="q14" value="4">Agree</p>
			<p><input type="radio" name="q14" value="5">Totally Agree</p>
			
			<h2>In network surveillance, state security is more important than the protection of citizens' privacy.</h2>
			<p><input type="radio" name="q15" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q15" value="2">Disagree</p>
			<p><input type="radio" name="q15" value="3">Not sure</p>
			<p><input type="radio" name="q15" value="4">Agree</p>
			<p><input type="radio" name="q15" value="5">Totally Agree</p>
			
			<h2>Finland must take part in the fight against Isis by training Iraqi government forces.</h2>
			<p><input type="radio" name="q16" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q16" value="2">Disagree</p>
			<p><input type="radio" name="q16" value="3">Not sure</p>
			<p><input type="radio" name="q16" value="4">Agree</p>
			<p><input type="radio" name="q16" value="5">Totally Agree</p>
			
			<h2>The terminally ill must have the right to assisted death.</h2>
			<p><input type="radio" name="q17" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q17" value="2">Disagree</p>
			<p><input type="radio" name="q17" value="3">Not sure</p>
			<p><input type="radio" name="q17" value="4">Agree</p>
			<p><input type="radio" name="q17" value="5">Totally Agree</p>
			
			<h2>Health and social services must be provided primarily as public services.</h2>
			<p><input type="radio" name="q18" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q18" value="2">Disagree</p>
			<p><input type="radio" name="q18" value="3">Not sure</p>
			<p><input type="radio" name="q18" value="4">Agree</p>
			<p><input type="radio" name="q18" value="5">Totally Agree</p>
			
			<h2>Authorities need to address the problems of families with children more sensitively.</h2>
			<p><input type="radio" name="q19" value="1"required>Totally Disagree</p>
			<p><input type="radio" name="q19" value="2">Disagree</p>
			<p><input type="radio" name="q19" value="3">Not sure</p>
			<p><input type="radio" name="q19" value="4">Agree</p>
			<p><input type="radio" name="q19" value="5">Totally Agree</p>
			<input type="submit" name='ok'>
		</form>
	</body>
</html>