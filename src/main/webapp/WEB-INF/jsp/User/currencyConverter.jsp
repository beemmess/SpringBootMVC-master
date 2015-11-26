<%@ page import="project.persistence.entities.Info.CurrencyConverter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Currency converter</title>
</head>
<body>

<h1>Currency converter</h1>
<form  method="POST"  action="/currency">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <table>
        <tr>
            <td>Currency :</td>
            <td>
                <select name="currencyShortName">
                    <option value=" ">Select currency: </option>

                    <option  value="ISK">ISK</option>
                    <option  value="USD">USD</option>
                    <option  value="GBP">GBP</option>
                    <option  value="EUR">EUR</option>
                    <option  value="CAD">CAD</option>
                    <option  value="DKK">DKK</option>
                    <option  value="NOK">NOK</option>
                    <option  value="SEK">SEK</option>
                    <option  value="CHF">CHF</option>
                    <option  value="JPY">JPY</option>


                </select>
            </td>
        </tr>

        <tr>
            <td>Icelandic Value:</td>

            <td><input name="iskValue" type="text"></td>
        </tr>
        <tr><td><input type="submit" VALUE="Submit"/></td></tr>

    </table>
</form >


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
