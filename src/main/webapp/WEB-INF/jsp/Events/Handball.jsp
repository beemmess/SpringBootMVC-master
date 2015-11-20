<%@ page import="project.persistence.entities.Info.CurrencyConverter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<body>
<head>
    <title>Events</title>
</head>

<h1>Handball Events</h1>
<p>${text}</p>
<ul>
    <c:forEach var="handballEvent" items="${handballEvent}">
        <li>
            <p>${handballEvent.date} ${handballEvent.time} ${handballEvent.teams} ${handballEvent.venue} ${handballEvent.tournament} </p>
        </li>
    </c:forEach>
</ul>
</body>
</html>