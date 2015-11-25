<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<body>
<head>
    <title>Weather Forecast</title>
</head>

<div class="vedurMynd" style="float:left;">

    <script type="text/javascript" src="http://vedur.is/js/iframe.js"></script>
    <script type="text/javascript"><!--
    VI.ifrm.type = 'wst';
    VI.ifrm.area = 101;
    VI.ifrm.lang = 'en';
    VI.ifrm.displayWeather();
    //-->
    </script>

</div>

<div class="vindaSpa">
    <script type="text/javascript" src="http://vedur.is/js/iframe.js"></script>
    <script type="text/javascript"><!--
    VI.ifrm.type = 'wel';
    VI.ifrm.area = 101;
    VI.ifrm.lang = 'en';
    VI.ifrm.displayWeather();
    //-->
    </script>
</div>


<%--<p>${text}</p> --%>

<div class="vedurspa">
    <c:forEach var="vedur" items="${vedur}">

            <p>${vedur.title} </p>
            <p>${vedur.content}</p>

        <%--<li>
            <p>${vedur.creation}</p>
        </li>
        <li>
            <p>${vedur.valid_from}</p>
        </li>
        <li>
            <p>${vedur.valid_to}</p>
        </li> --%>



    </c:forEach>
</div>

<style type="text/css">
    div.vedurspa{
        width: 40%;
        padding-left: 45%;
        padding-top: 3%;
    }

</style>



</body>
</html>