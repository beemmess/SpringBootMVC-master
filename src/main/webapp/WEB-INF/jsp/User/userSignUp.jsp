<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
    <title>User</title>
</head>
<body>
<h1>UserSignup</h1>

<table>
    <tr><td>${User.username}</td></tr>
    <tr><td>${User.email}</td></tr>
</table>

</body>
</html>
