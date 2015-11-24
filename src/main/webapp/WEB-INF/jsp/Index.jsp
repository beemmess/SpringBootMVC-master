<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Project Title</title>
    </head>
    <body>

    <h1>HBV501G Project Spring Boot Skeleton</h1>
    <p>This skeleton of a Spring Boot Web project was made to help groups get started on their projects without to much hassle.</p>

    <ul>
        <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
    </ul>
    <h2><a href="/public/create">Click here to sign up!</a></h2>
    <h2><a href="/public/currency">Currency</a></h2>
    <h2><a href="/login">Login</a></h2>



    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
    <c:if test="${not empty currentUser.username}"><h2>Logged in as ${currentUser.username}</h2>

        <h2><a href=" <c:url value="/userpage/${currentUser.id}" />">My page</a></h2>

        <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Log out</button>
        </form></c:if>


</html>
