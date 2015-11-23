
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
    <table>
        <th>Title</th>
        <th>Restricted</th>
        <th>Rate of Movie</th>
        <th>Link to imdb</th>
        <th>Image</th>
        <c:forEach var="movieEvent" items="${movieEvent}">
            <tr>
                <td> ${movieEvent.title} </td>
                <td> ${movieEvent.restricted} </td>
                <td> ${movieEvent.imdbRate} </td>
                <td> ${movieEvent.imdbLink} </td>
                <td> ${movieEvent.image} </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>