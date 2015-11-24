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

        <form:select path="currencyShortName" >
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

                <tr>
                    <td><h2>Currency:</h2><sf:input path="currencyShortName" type="text" value="${currency[0]}"  placeholder=" ${currency[0]}"/></td>
                    <td><h2>Value:</h2> <sf:input path="value" type="text" value="${currency[1]}"  placeholder=" ${currency[1]}"/></td>
                    <td><h2>iskValue:</h2><sf:input path="iskValue" type="text"   placeholder=" ${currency[2]}" value="${currency[2]}"/></td>

                    <td><h2>Result:</h2>${currency[3]}</td>


                    <%

                        String iskvalueString = request.getParameter("iskValue");
                        double iskValue = 1;
                        if(iskvalueString != null) {iskValue = Double.parseDouble(iskvalueString);}

                        //String shortName = request.getParameter("currencyShortName");
                        Object shortName = request.getParameter("currencyShortName");
                        System.out.print(shortName + " ");

                        String value = request.getParameter("value");
                        System.out.print(value + " ");

                        System.out.println(iskvalueString + " ");



                        CurrencyConverter currencyConverter = new CurrencyConverter();
                        currencyConverter.setIskValue(iskValue);
                       // currencyConverter.setForeignValue(iskValue/currencyConverter.getValue());
                        //System.out.println(currencyConverter.getValue());
                    %>

                </tr>


            </c:forEach>

            <input type="submit" value="Submit"/>
        </table>


            </form:form>






   </body>
</html>