<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
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

<h2>Welcome ${loggedInAdmin.adminFirstName}</h2>
<a href="/materials/create">Create Material</a>
<a href="/materials/all">Show All Materials</a>
<a href="/suppliers/create">Create Supplier</a>
<a href="/suppliers/all">Show All Suppliers</a>

</body>
</html>