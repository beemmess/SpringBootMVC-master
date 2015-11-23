<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE HTML>
<body>
    <head>
        <title>Events</title>
    </head>

    <h1>Cinema</h1>
    <p>${text}</p>
    <table>
        <th>Title</th>
        <th>Restricted</th>
        <th>Theater</th>
        <c:forEach var="movieEvent" items="${movieEvent}">
            <tr>
                <td> ${movieEvent.title} </td>
                <td> ${movieEvent.restricted} </td>
                <td>
                    <c:forEach var="theater" items="${movieEvent.theater}">
                        ${theater}
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h2><a href="/events/cinema/streetmap">See location of movie theaters around Reykjavík</a></h2>
</body>
</html>