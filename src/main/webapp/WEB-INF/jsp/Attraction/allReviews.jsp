<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
    <title>AllReviews</title>
</head>
<body>
<h1>Reviews</h1>

<sf:form method="POST" commandName="allReviews" action="/reviews">

    <table>
        <tr>
            <td> User Name:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
            <td><sf:input path="username" type="text" placeholder="Enter username"/></td>
        </tr>
        <tr>
            <td>Review:</td>
                <%--the `path` attribute matches the `note` attribute of the Entity that was passed in the model--%>
            <td><sf:input path="review" type="text" placeholder="Enter review"/></td>
        </tr>

    </table>

    <input type="submit" VALUE="Post It!"/>

</sf:form>


</body>
</html>