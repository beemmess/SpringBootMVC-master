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
    <table id="movie-table">
        <th>Title</th>

        <th>Theater</th>

        <th>Restricted</th>


        <%-- MovieTitle --%>
        <c:forEach var="movieEvent" items="${movieEvent}" >
            <tr>
                <td> ${movieEvent.title} </td>

                    <%-- MovieTheater --%>
                <td><c:forEach var="theater" items="${movieEvent.theater}" varStatus="count">
                    ${theater}



            <%-- MovieSchedule--%>
        <table>

            <th>Showtimes: </th>
           <td>  <c:forEach var="row"  items="${movieEvent.schedule}" >
                <c:forEach var="col" begin="${count.index}" end="${count.index}" items="${row}" >
                            ${col}
                        </c:forEach>
                    </c:forEach></td>
        </table>
            </c:forEach></td>


                <td> ${movieEvent.restricted} </td>
    </c:forEach>









            </tr>

    </table>
    <h2><a href="/events/cinema/streetmap">See location of movie theaters around Reykjavík</a></h2>
</body>
</html>
