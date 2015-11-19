
<!DOCTYPE HTML>
<html>
<head>
    <title>Currency converter</title>
</head>
<body>
<form method="GET" action="/currency">
    <%--<h1>${halloMsg}</h1>--%>
</form>
<table>
    <tr>
        <td>Currency: </td>
        <td>${currencyConverter.currencyShortName}</td>
    </tr>
    <tr>
        <td>Currency value: </td>
        <td>${currencyConverter.value}</td>
    </tr>

    <tr>
        <td>Icelandic value: </td>
        <td>${currencyConverter.iskValue}</td>
    </tr>

    <tr>
        <td>${currencyConverter.currencyShortName} value: </td>
        <td>${currencyConverter.foreignValue}</td>
    </tr>




</table>


</body>
</html>