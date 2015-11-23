<%@page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cinema streetMap</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #googleMap {
            height: 80%;
        }

    </style>
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script lang="is">
        var pyrmont = {lat:64.13, lng:-21.832653};

        var grafarvogskirkja = {lat:64.132346, lng:-21.800200};
        var frikirkjan = {lat:64.144452, lng:-21.939473};
        var grHatturinn = {lat:65.681545, lng:-18.089773};
        var akureyrarkirkja = {lat:65.680037, lng:-18.090864};
        var gamlabio = {lat:64.147117, lng:-21.933381};
        var hateigskirkja = {lat:64.138854, lng:-21.905955};
        var hlegardur  = {lat:64.168181, lng:-21.690571};
        var langholtskirkja = {lat:64.135586, lng:-21.857488};
        var hljodberg = {lat:64.148471, lng:-21.935756};
        var harpa = {lat:64.150454, lng:-21.932691};
        var hallgrimskirkja = {lat:64.141860, lng:-21.926659}
        var austurbaer = {lat:64.140841,lng: -21.919255};
        var rosenberg = {lat:64.146119, lng:-21.928889};
        var listasafnid = {lat:64.149260, lng: -21.940962};
        var baejarbio = {lat:64.064119, lng:-21.969803};
        var vodafonhollin = {lat:64.133032, lng:-21.922166};
        var haskolabio = {lat:64.140487, lng:-21.954605};

        var infowindow;
        var map;

        function initialize()
        {
            mapProp = {
                center:pyrmont,
                zoom:12,
                mapTypeId:google.maps.MapTypeId.ROADMAP
            };

            map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

            var marker=new google.maps.Marker({
                position:grafarvogskirkja,
            });

            marker.setMap(map);

            infowindow = new google.maps.InfoWindow({
            });

            google.maps.event.addListener(marker, 'click', function() {
                infowindow.setContent("Grafarvogskirkja");
                infowindow.open(map, this);
            });

            var marker1=new google.maps.Marker({
                position:frikirkjan,
            });

            marker1.setMap(map);

            google.maps.event.addListener(marker1, 'click', function() {
                infowindow.setContent("Fríkirkjan í Reykjavík");
                infowindow.open(map, this);
            });

            var marker2=new google.maps.Marker({
                position:grHatturinn,
            });

            marker2.setMap(map);

            google.maps.event.addListener(marker2, 'click', function() {
                infowindow.setContent("Græni Hatturinn");
                infowindow.open(map, this);
            });

            var marker3=new google.maps.Marker({
                position:akureyrarkirkja,
            });

            marker3.setMap(map);

            google.maps.event.addListener(marker3, 'click', function() {
                infowindow.setContent("Akureyrarkirkja");
                infowindow.open(map, this);
            });

            var marker4=new google.maps.Marker({
                position:gamlabio,
            });

            marker4.setMap(map);

            google.maps.event.addListener(marker4, 'click', function() {
                infowindow.setContent("Gamlabíó");
                infowindow.open(map, this);
            });

            var marker5=new google.maps.Marker({
                position:hateigskirkja,
            });

            marker5.setMap(map);

            google.maps.event.addListener(marker5, 'click', function() {
                infowindow.setContent("Háteigskirkja");
                infowindow.open(map, this);
            });

            var marker6=new google.maps.Marker({
                position:hlegardur,
            });

            marker6.setMap(map);

            google.maps.event.addListener(marker6, 'click', function() {
                infowindow.setContent("Hlégarður");
                infowindow.open(map, this);
            });

            var marker7=new google.maps.Marker({
                position:langholtskirkja,
            });

            marker7.setMap(map);

            google.maps.event.addListener(marker7, 'click', function() {
                infowindow.setContent("Langholtkirkja");
                infowindow.open(map, this);
            });

            var marker8=new google.maps.Marker({
                position:hljodberg,
            });

            marker8.setMap(map);

            google.maps.event.addListener(marker8, 'click', function() {
                infowindow.setContent("Hljóðberg Hannesarholt");
                infowindow.open(map, this);
            });

            var marker9=new google.maps.Marker({
                position:harpa,
            });

            marker9.setMap(map);

            google.maps.event.addListener(marker9, 'click', function() {
                infowindow.setContent("Harpa Tónlistarhús");
                infowindow.open(map, this);
            });

            var marker10=new google.maps.Marker({
                position:hallgrimskirkja,
            });

            marker10.setMap(map);

            google.maps.event.addListener(marker10, 'click', function() {
                infowindow.setContent("Hallgrímskirkja");
                infowindow.open(map, this);
            });

            var marker11=new google.maps.Marker({
                position:austurbaer,
            });

            marker11.setMap(map);

            google.maps.event.addListener(marker11, 'click', function() {
                infowindow.setContent("Austurbær");
                infowindow.open(map, this);
            });

            var marker12=new google.maps.Marker({
                position:rosenberg,
            });

            marker12.setMap(map);

            google.maps.event.addListener(marker12, 'click', function() {
                infowindow.setContent("Café Rósenberg");
                infowindow.open(map, this);
            });

            var marker13=new google.maps.Marker({
                position:listasafnid,
            });

            marker13.setMap(map);

            google.maps.event.addListener(marker13, 'click', function() {
                infowindow.setContent("Listasafn Reykjavíkur");
                infowindow.open(map, this);
            });

            var marker14=new google.maps.Marker({
                position:baejarbio,
            });

            marker14.setMap(map);

            google.maps.event.addListener(marker14, 'click', function() {
                infowindow.setContent("Bæjarbíó");
                infowindow.open(map, this);
            });

            var marker15=new google.maps.Marker({
                position:vodafonhollin,
            });

            marker15.setMap(map);

            google.maps.event.addListener(marker15, 'click', function() {
                infowindow.setContent("Vodafone Höllin");
                infowindow.open(map, this);
            });

            var marker16=new google.maps.Marker({
                position:haskolabio,
            });

            marker16.setMap(map);

            google.maps.event.addListener(marker16, 'click', function() {
                infowindow.setContent("Háskólabíó");
                infowindow.open(map, this);
            });

        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>

<body>
<div id="googleMap"></div>
<h2><a href="/events">Back to events</a></h2>
</body>
</html>