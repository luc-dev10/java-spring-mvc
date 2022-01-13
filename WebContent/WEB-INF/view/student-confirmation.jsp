<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>The student is confirmed: ${student.firstName} ${student.lastName}</p>
	<p>The student is from: ${student.country} </p>
	<p>The student is from: ${student.favoriteLanguage} </p>
	
	<ul>
		<c:forEach var="temp" items="${student.os}">
		<li>
			${temp}
		</li>
		</c:forEach>
	</ul>
	</body>
</html>