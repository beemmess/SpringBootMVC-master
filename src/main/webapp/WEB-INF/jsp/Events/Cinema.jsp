
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<body>
<head>
    <title>Events</title>
</head>

<h1>Cinema</h1>
<p>${texti}</p>
<ul>
    <c:forEach var="movieEvent" items="${movieEvent}">
        <li>
            <p> ${movieEvent.title} ${movieEvent.restricted} ${movieEvent.imdbRate} ${movieEvent.imdbLink} ${movieEvent.image}</p>
        </li>
    </c:forEach>
</ul>
</body>
</html>