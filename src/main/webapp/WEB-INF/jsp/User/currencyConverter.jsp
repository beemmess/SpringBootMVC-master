<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Currency converter</title>
    </head>
    <body>
    <h1>Currency Converter</h1>


    <form:form modelAttribute="currencyConverter">

        <form:select path="currencyShortName" >
            <form:option value="">Currency : </form:option>
            <c:forEach items="${currencies}" var="frequency">
                <form:option value="${currency}">${currency}</form:option>
            </c:forEach>
        </form:select>

        <input type="submit" value="Submit" />

    </form:form>

    </body>
</html>