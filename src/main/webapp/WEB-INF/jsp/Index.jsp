<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Happy Tourist Reykjavík</title>
    </head>
    <body>

    <h1>Welcome to Happy tourist Reykjavík!</h1>

    <ul>
        <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
    </ul>
<<<<<<< HEAD
    <h2><a href="/public/create">Click here to sign up!</a></h2>
    <h2><a href="/public/currency">Currency</a></h2>
    <h2><a href="/login">Login</a></h2>

    <h2><a href=" <c:url value="/userpage/${currentUser.id}" />">My page</a></h2>

=======
    <h2><a href="/signup">Click here to sign up!</a></h2>
    <h2><a href="/currency">Currency converter</a></h2>
    <h2><a href="/events">Check out the events schedule!</a></h2>
    <h2><a href="/info">Useful Information</a> </h2>
    <h2><a href="/currency">Currency</a></h2>
    <h2><a href="/streetmap">StreetMap</a></h2>
>>>>>>> master
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
    <c:if test="${not empty currentUser.username}"><h2>Logged in as ${currentUser.username}</h2>


        <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Log out</button>
        </form></c:if>


</html>
