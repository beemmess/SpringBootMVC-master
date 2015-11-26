<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>

    <head>
        <title>Happy Tourist Reykjavík</title>
    </head>
    <body>
        <!-- <img src="JonG.jpg">  !-->
        <h1>Welcome to Happy tourist Reykjavík!</h1>

        <div class="loggedIn">
            <c:if test="${not empty currentUser.username}"><h2>Logged in as ${currentUser.username}</h2>

                <h2><a href=" <c:url value="/userpage/${currentUser.id}" />">My page</a></h2>

                <form action="/logout" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button type="submit">Log out</button>


                </form></c:if>
        </div>

    <div id="wrapper">

        <div id="navMenu">
            <ul>
                <li>
                    <a href="#">Useful Information</a>
                    <ul>
                        <li><a href="/info/phrases">Phrases</a></li>
                        <li><a href="/info/usefulphonenumbers">Phone numbers</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="/currency">Currency Converter</a>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="">Events</a>
                    <ul>
                        <li><a href="/events/cinema">Cinema</a></li>
                        <li><a href="/events/concerts">Concerts</a></li>
                        <li><a href="/events/football">Football</a></li>
                        <li><a href="/events/handball">Handball</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="/streetmap">Streetmap</a>
                    <ul>
                        <li><a href="/events/cinema/streetmap">Cinema Streetmap</a></li>
                        <li><a href="/events/concerts/streetmap">Concert Streetmap</a></li>
                        <li><a href="/events/football/streetmap">Football Streetmap</a></li>
                        <li><a href="/events/handball/streetmap">Handball Streetmap</a></li>
                        <li><a href="/streetmap/restaurants">Restaurant Streetmap</a></li>
                        <li><a href="/streetmap/hotel">Hotel Streetmap</a></li>
                        <li><a href="/streetmap/museum">Museum Streetmap</a></li>
                        <li><a href="/streetmap/walking1">Batman Streetmap</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="">Forecast</a>
                    <ul>
                        <li><a href="/weather">Weather Forecast</a></li>
                        <li><a href="/aurora">Aurora Forecast</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="/public/create">Sign Up</a>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="/login">Login</a>
                </li>
            </ul>






            <br class="clearFloat">

        </div>

    </div>

   <!-- <ul>
        <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
    </ul>

    <!--
    <h2><a href="/public/create">Click here to sign up!</a></h2>
    <h2><a href="/login">Login</a></h2>

    <h2><a href="/currency">Currency converter</a></h2>
    <h2><a href="/events">Check out the events schedule!</a></h2>
    <h2><a href="/info">Useful Information</a> </h2>
    <h2><a href="/streetmap">StreetMap</a></h2>  !-->

    </body>

    <!-- <footer>Class HBV501G, University of Iceland, Fall 2015</footer>

    <div class="loggedIn">
    <c:if test="${not empty currentUser.username}"><h2>Logged in as ${currentUser.username}</h2>

        <h2><a href=" <c:url value="/userpage/${currentUser.id}" />">My page</a></h2>

        <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Log out</button>

            <h2><a href="/reviews">Write review</a></h2>

        </form></c:if>
    </div>   -->


    <style type="text/css">

        *{
        }

        body{
            font-family: 'PT Sans Narrow', sans-serif;
            /*background-image: url(http://sadcars.com/skrar/image/blog_2013/Iceland%20driving%20winter%20Travel%20adventures.jpg); */
        }

        h1{
            text-align: center;
            padding-top: 1em;
            height: 3em;
            border-bottom: 2px solid black;
        }

        img{
            width: 20px;
            height:20px;
        }

        #navMenu{
            margin: 0;
            padding: 0;
            padding-left: 150px;
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
            color: #FFF;
            border: 1px solid #FFF;
            text-shadow: 1px 1px 1px #000;
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
            background: #09F;
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
            float: right;
        }


    </style>


</html>
