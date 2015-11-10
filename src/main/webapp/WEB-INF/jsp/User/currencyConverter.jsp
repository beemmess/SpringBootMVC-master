<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Currency converter</title>
    </head>

    <h1>Currency Converter</h1>
    <%--
                <form:form method="GET" modelAttribute="currencyConverter">

                        <form:select path="currencyShortName" >
                        <form:option value=" ">Select currency: </form:option>
                        <c:forEach var="currency" items="${currencies}" >
                            <form:option value="${currency}">${currency}</form:option>

                        </c:forEach>
                    </form:select>


                    <input type="submit" value="Submit" />

                </form:form>

                        <form:form method="POST" modelAttribute="currencyConverter" >
                            <c:forEach var="currency" items="${values}" >

                                <br/>
                                <label path="value">Value: </label>
                                <h3>${currency}</h3>

                            </c:forEach>



                        </form:form>


--%>
    <form:form method="GET" modelAttribute="currencyConverter" action="/currency/${currencyShortName}">

        <form:select path="currencyShortName" name="name1">
            <form:option value="">Select currency: </form:option>
            <c:forEach var="currencyInput" items="${shortNames}" >
                <form:option value="${currencyInput[0]}">${currencyInput[0]}</form:option>

            </c:forEach>
        </form:select>

        <input type="submit" value="Submit"/>


    </form:form>


    <form:form method="POST" modelAttribute="currencyConverter"  >

        <table>
        <c:forEach var="currency" items="${shortNames}">

            <c:if test="${currency[0] == 'USD'}">

                <tr>
                    <td><h2>Currency:</h2><a href="/currency/${currency[0]}"> ${currency[0]}</a></td>
                    <td><h2>Value:</h2> ${currency[1]}</td>
                    <td><h2>Result:</h2> ${currency[2]}</td>
                </tr>
            </c:if>

            </c:forEach>
        </table>

            </form:form>






   </body>
</html>