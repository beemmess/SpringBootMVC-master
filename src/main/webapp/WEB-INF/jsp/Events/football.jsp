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

    <h1>Football Events</h1>
    <p>${text}</p>
    <table>
        <th>Date</th>
        <th>Home Team</th>
        <th>Away Team</th>
        <th>Location</th>
        <th>Tournament</th>
        <c:forEach var="footballEvent" items="${footballEvent}">
            <tr>
                <td> ${footballEvent.date} </td>
                <td> ${footballEvent.homeTeam} </td>
                <td> ${footballEvent.awayTeam} </td>
                <td> ${footballEvent.location} </td>
                <td> ${footballEvent.tournament} </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

