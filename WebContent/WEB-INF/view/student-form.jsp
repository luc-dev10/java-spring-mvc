<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student" method="GET">
	
		First name : <form:input path="firstName"/>
		Last name : <form:input path="lastName"/>
		
		country:
		<form:select path="country">
			<form:option value="Brazil" label="Brazil"/>
			<form:option value="Germany" label="Germany"/>
			<form:option value="China" label="China"/>
			<form:option value="Canada" label="Canada"/>
		</form:select>
		
		Java<form:radiobutton path="favoriteLanguage" value="Java" />
		PHP<form:radiobutton path="favoriteLanguage" value="PHP" />
		C#<form:radiobutton path="favoriteLanguage" value="C#" />
		Python<form:radiobutton path="favoriteLanguage" value="Python" />
		
		OS:
		Linux<form:checkbox path="os" value="Linux" />
		Windows<form:checkbox path="os" value="Windows" />
		MacOS<form:checkbox path="os" value="MacOS" />
		
	
		<input type="submit" value="submit">
	</form:form>

</body>
</html>