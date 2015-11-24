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
</html>
