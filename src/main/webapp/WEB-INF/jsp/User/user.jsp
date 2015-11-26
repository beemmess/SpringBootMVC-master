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
<h1>Registration form</h1>


<sf:errors path="form.*"/>
<sf:form method="POST" commandName="form" action="/public/create">
    <table>
        <tr>
            <td>User name:</td>
            <td><sf:input path="username" type="text" placeholder="Enter name"/></td>

        </tr>

        <tr>
            <td>User email:</td>
            <td><sf:input path="email" type="text" placeholder="Enter email"/></td>

        </tr>

        <tr>
            <td>User password:</td>
            <td><sf:input path="password" type="password" placeholder="Enter password"/></td>

        </tr>

        <tr>
            <td>Repeat password:</td>
            <td><sf:input path="passwordRepeated" type="password" placeholder="Repeat password"/></td>

        </tr>

        <tr><td><input type="submit" VALUE="Sign up"/></td></tr>
    </table>

</sf:form>

</body>
</html>