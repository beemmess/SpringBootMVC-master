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

<div id="wrapper">

    <div id="navMenu">
        <ul>
            <li>
                <a href="/events/football">Footballl</a>
            </li>
            <li>
                <a href="/events/handball">Handball</a>
            </li>
            <li>
                <a href="/events/cinema">Cinema</a>
            </li>
            <li>
                <a href="/events/concerts">Concerts</a>
            </li>
        </ul>
    </div>

 <%--  <p>${texti}</p>  --%>

</body>

<style>
    body{
        font-family: 'PT Sans Narrow', sans-serif;
        font-size: 18px;
        height: 650px;
        background: -webkit-linear-gradient(white, #778899 ); /* For Safari 5.1 to 6.0 */
        background: -moz-linear-gradient(white, #778899 ); /* For Firefox 3.6 to 15 */
        background: linear-gradient(white, #778899);
    }


    #navMenu{
        margin: 0;
        padding: 0;
        padding-left: 140px;
    }

    #navMenu ul{
        margin:0;
        padding: 0;
        line-height: 30px;
    }

    #navMenu li{
        margin: 0;
        padding: 0;
        list-style: none;
        float: left;
        position: relative;

    }

    #navMenu ul li a{
        text-align: center;
        text-decoration: none;
        height: 30px;
        width: 150px;
        display: block;
        color: #000;
        border: 1px solid #FFF;
        /*text-shadow: 1px 1px 1px #000; */
    }

    #navMenu ul ul {
        position: absolute;
        visibility: hidden;
        top: 32px;
    }

    #navMenu ul li:hover ul{
        visibility: visible;
    }

    /******************************/

    #navMenu li:hover {
        background: #E0E0E0;
    }

    #navMenu ul li:hover ul li a:hover{
        background: #CCC;
        color: #000;
    }

    #navMenu a:hover{
        color: #000;
    }

    .clearFloat{
        clear: both;
        margin: 0;
        padding: 0;
    }

    .loggedIn{
        font-size: 14px;
        float: left;
        margin-top: 200px;
        margin-left: 10px;
    }

    .loggedIn a{
        color: #000;
        text-decoration: none;
    }

</style>
</html>
