<%@ page import="project.persistence.entities.Info.CurrencyConverter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<body>
<head>
    <title>Events</title>
</head>

<h1>Select type of Event</h1>

<h2><a href="events/football">Football</a></h2>
<h2><a href="events/handball">Handball</a></h2>
<h2><a href="events/cinema">Cinema</a> </h2>
<h2><a href="events/concerts">Concerts</a></h2>

<p>${texti}</p>

</body>
</html>
