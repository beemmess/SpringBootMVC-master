<%@ page import="project.persistence.entities.User.CurrentUser" %>
<%@ page import="project.persistence.entities.User.User" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page session="true"%>

<html lang="en">
<head>
    <title>User</title>
</head>
<body>
<h1>Login Page</h1>

<form role="form" action="/login" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<table>
    <tr>
        <td><label for="username">user name </label></td>
        <td><input type="username" name="username" id="username" required autofocus/></td>
    </tr>
    <tr>
        <td><label for="password">Password</label></td>
        <td><input type="password" name="password" id="password" required/></td>
    </tr>
    <tr>
        <td><button type="submit">Sign in</button></td>

    </tr>


</table>
</form>

    </body>
    </html>