<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
    <title>User</title>
</head>
<body>
<h1>${loginMsg}</h1>

<form action="${loginUrl}" method="post">
    <c:if test="${param.error != null}">
        <p>
            Invalid username and password.
        </p>
    </c:if>
    <c:if test="${param.logout != null}">
        <p>
            You have been logged out.
        </p>
    </c:if>
    <p>
        <label for="username">Username</label>
        <input type="text" id="username" name="username"/>
    </p>
    <p>
        <label for="password">Password</label>
        <input type="password" id="password" name="password"/>
    </p>
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
    <button type="submit" class="btn">Log in</button>
</form>

<%--
<sf:errors path="user.*"/>
<sf:form method="POST" commandName="user" action="/login">
    <table>
        <tr>
            <td>User name:</td>
            <td><sf:input path="username" type="text" placeholder="Enter name"/></td>

        </tr>


        <tr>
            <td>User password:</td>
            <td><sf:input path="password" type="password" placeholder="Enter password"/></td>
        </tr>


        <tr><td><input type="submit" VALUE="Login"/></td></tr>
    </table>

</sf:form>


--%>
</body>
</html>