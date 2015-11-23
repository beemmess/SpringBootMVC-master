<%@page contentType="text/html;charset=UTF-8" language="java" %>
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

    <h1> Concerts</h1>
    <p>${text}</p>
    <table>
        <th>Date</th>
        <th>Time</th>
        <th>Name of event</th>
        <th>Type of event</th>
        <th>Performer</th>
        <th>Event Hall</th>
        <c:forEach var="concertsEvent" items="${concertsEvent}">
        <tr>
            <td> ${concertsEvent.dateOfShow} </td>
            <td> ${concertsEvent.timeOfShow}</td>
            <td> ${concertsEvent.eventDateName} </td>
            <td> ${concertsEvent.name} </td>
            <td> ${concertsEvent.userGroupName} </td>
            <td> ${concertsEvent.eventHallName} </td>
            <td> ${concertsEvent.imageSource} </td>
        </tr>
    </c:forEach>
</table>
    <h2><a href="/events/concerts/streetmap">See location of concert halls around Reykjavík </a></h2>
</body>
</html>