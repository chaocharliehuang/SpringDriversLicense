<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>New License</title>
</head>
<body>
	<h1>New License</h1>
	
	<form:form method="POST" action="/licenses/new" modelAttribute="license">
	    <form:label path="person">Person: 
	    <form:errors path="person"/>
	    <form:select path="person" items="${persons}" itemValue="id" itemLabel="fullName"/></form:label>
	    
	    <br><br>
	    
	    <form:label path="state">State: 
	    <form:errors path="state"/>
	    <form:input path="state"/></form:label>
	    
	    <br><br>
	    
	    <form:label path="expiration_date">Expiration Date: 
	    <form:errors path="expiration_date"/>
	    <form:input type="date" path="expiration_date"/></form:label>
	    
	    <br><br>
	    
	    <input type="submit" value="Create"/>
	</form:form>
</body>
</html>