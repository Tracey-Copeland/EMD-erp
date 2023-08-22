<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>


<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form action="/suppliers/process/create" method="post" modelAttribute="supplier">
		<div class="form-group">
			<form:label path="name">Company Name </form:label>
			<form:input type="text" path="name" class="form-control"/>
			<form:errors path="name" />
		</div>
		<div class="form-group">
			<form:label path="location">Location </form:label>
			<form:input type="text" path="location" class="form-control"/>
			<form:errors path="location" />
		</div>
		<input type="submit" value="Create Supplier"/>
	

 	</form:form>

</body>
</html>