<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <title>UsefulPhoneNumbers</title>

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

<h1>Useful Phone Numbers</h1>

<c:choose>
    <%--If the model has an attribute with the name `postitNotes`--%>
    <c:when test="${not empty usefulphonenumber}">
        <%--Create a table for the Postit Notes--%>
        <table>

            <tr>
                <th>Owner</th><th>PhoneNumber</th>
            </tr>
                <%--For each postit note, that is in the list that was passed in the model--%>
                <%--generate a row in the table--%>
                <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
            <c:forEach  var="usefulphonenumbers" items="${usefulphonenumber}">
                <tr>
                        <%--We can reference attributes of the Entity by just entering the name we gave--%>
                        <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                        <%--Create a link based on the name attribute value--%>
                    <td>${usefulphonenumbers.owner}</td>
                    <td>${usefulphonenumbers.phoneNumber}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>No numbers available!</h3>
    </c:otherwise>
</c:choose>
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
    tr:nth-child(even) {
        background-color: #F0F0F0 ;
    }
</style>

</html>