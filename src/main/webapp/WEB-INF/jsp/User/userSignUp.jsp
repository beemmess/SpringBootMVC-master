<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
    <title>User</title>

    <div id="wrapper">

        <div id="navMenu">
            <ul>
                <li>
                    <a href="/">Home</a>
                </li>
            </ul>
        </div>
    </div>
</head>
<body>
<h1>Registration successful</h1>


<table>
    <tr><td>${form.username}</td></tr>
    <tr><td>${form.email}</td></tr>
</table>

</body>
<style type="text/css">

    *{

    }

    body{
        font-family: 'PT Sans Narrow', sans-serif;
        font-size: 18px;
        /*background-image: url(http://sadcars.com/skrar/image/blog_2013/Iceland%20driving%20winter%20Travel%20adventures.jpg); */
    }

    h1{
        text-align: center;
        padding-top: 1em;
        height: 3em;
        border-bottom: 2px solid black;
    }

    h2 a:hover{
        background: #E0E0E0;
    }

    img{
        width: 20px;
        height:20px;
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
