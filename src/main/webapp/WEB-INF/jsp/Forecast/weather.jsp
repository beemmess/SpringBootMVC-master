<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<body>
<head>
    <title>Weather Forecast</title>
</head>

<p>${text}</p>
<ul>
    <c:forEach var="vedur" items="${vedur}">
        <li>
            <p>${vedur.title} ${vedur.creation} ${vedur.valid_from} ${vedur.valid_to} ${vedur.content}</p>
        </li>
    </c:forEach>
</ul>
</body>
</html>