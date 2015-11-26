<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
    <title>User</title>
</head>
<body>
<h1>${userPage}</h1>

<table>
    <th>My Reviews</th>
<c:forEach items="${reviews}" var="reviews">
    <tr>
        <td>${reviews.restaurant}</td>
        <td><p>${reviews.review}</p></td>
    </tr>
</c:forEach>
</table>

</body>
</html>