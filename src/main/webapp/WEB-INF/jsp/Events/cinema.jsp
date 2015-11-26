<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE HTML>
<body>
    <head>
        <title>Events</title>

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

    <h1>Cinema</h1>
    <table id="movie-table">
        <th>Title</th>

        <th>Theater</th>

        <th>Restricted</th>


        <%-- MovieTitle --%>
        <c:forEach var="movieEvent" items="${movieEvent}" >
            <tr>
                <td> ${movieEvent.title} </td>

                    <%-- MovieTheater --%>
                <td><c:forEach var="theater" items="${movieEvent.theater}" varStatus="count">
                    ${theater}



            <%-- MovieSchedule--%>
        <table>

            <th>Showtimes: </th>
           <td>  <c:forEach var="row"  items="${movieEvent.schedule}" >
                <c:forEach var="col" begin="${count.index}" end="${count.index}" items="${row}" >
                            ${col}
                        </c:forEach>
                    </c:forEach></td>
        </table>
            </c:forEach></td>


                <td> ${movieEvent.restricted} </td>
    </c:forEach>









            </tr>

    </table>
    <h2><a href="/events/cinema/streetmap">See location of movie theaters around Reykjavík</a></h2>
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
        background-color: #F0F0F0  ;
    }
</style>
</html>
