<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Happy Tourist Reykjavík</title>
    </head>
    <body>

        <h1>Welcome to Happy tourist Reykjavík!</h1>

    <div id="wrapper">

        <div id="navMenu">

            <ul>
                <li>
                    <a href="#">Products</a>
                    <ul>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="#">Products</a>
                    <ul>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="#">Products</a>
                    <ul>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                    </ul>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="#">Products</a>
                    <ul>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                        <li><a href="#">link item</a></li>
                    </ul>
                </li>
            </ul>

            <br class="clearFloat">

        </div>

    </div>

    <ul>
        <li><a href="/postit">Click here for Persistence Layer Demo</a></li>
    </ul>

    <h2><a href="/public/create">Click here to sign up!</a></h2>
    <h2><a href="/login">Login</a></h2>

    <h2><a href="/currency">Currency converter</a></h2>
    <h2><a href="/events">Check out the events schedule!</a></h2>
    <h2><a href="/info">Useful Information</a> </h2>
    <h2><a href="/streetmap">StreetMap</a></h2>

    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
    <c:if test="${not empty currentUser.username}"><h2>Logged in as ${currentUser.username}</h2>

        <h2><a href=" <c:url value="/userpage/${currentUser.id}" />">My page</a></h2>

        <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Log out</button>



            <h2><a href="/reviews">Write review</a></h2>

        </form></c:if>


    <style type="text/css">
        h1{
            font-style: italic;
            text-align: center;
            padding-top: 1em;
            height: 3em;
            border-bottom: 2em solid black;
        }

        #navMenu{
            margin: 0;
            padding: 0;
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
            float:left;
            position: relative;
            background: #999;
        }

        #navMenu ul li a{
            text-align: center;
            font-family: "Comic Sans MS", cursive;
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


    </style>


</html>
