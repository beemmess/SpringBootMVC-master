<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <title>UsefulPhoneNumbers</title>

</head>
<body>

<h1>Useful Phone Numbers</h1>

<c:choose>
    <%--If the model has an attribute with the name `postitNotes`--%>
    <c:when test="${not empty usefulphonenumber}">
        <%--Create a table for the Postit Notes--%>
        <table>

            <tr>
                <th>Owner</th><th>PhoneNumber</th>
            </tr>
                <%--For each postit note, that is in the list that was passed in the model--%>
                <%--generate a row in the table--%>
                <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
            <c:forEach  var="usefulphonenumbers" items="${usefulphonenumber}">
                <tr>
                        <%--We can reference attributes of the Entity by just entering the name we gave--%>
                        <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                        <%--Create a link based on the name attribute value--%>
                    <td>${usefulphonenumbers.owner}</td>
                    <td>${usefulphonenumbers.phoneNumber}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>No numbers available!</h3>
    </c:otherwise>
</c:choose>
</body>
</html>