<%@page contentType="text/html;charset=UTF-8" language="java" %>
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
    <table>
        <th>Date</th>
        <th>Time</th>
        <th>Teams</th>
        <th>Venue</th>
        <th>Tournament</th>
        <c:forEach var="handballEvent" items="${handballEvent}">
            <tr>
                <td> ${handballEvent.date} </td>
                <td> ${handballEvent.time} </td>
                <td> ${handballEvent.teams} </td>
                <td> ${handballEvent.venue} </td>
                <td> ${handballEvent.tournament} </td>
            </tr>
        </c:forEach>
    </table>
    <h2><a href="/events/handball/streetmap">See location of sport stadiums around Reykjavík</a></h2>
</body>
</html>
