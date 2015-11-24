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
        var alfabakki = {lat:64.108185, lng:-21.844789};
        var smarabio = {lat:64.101142, lng:-21.883153};
        var laugarasbio = {lat:64.148270, lng:-21.867067};
        var kringlubio = {lat:64.130242, lng:-21.894876};
        var haskolabio = {lat:64.140487, lng:-21.954605};
        var egilsholl = {lat:64.146706, lng:-21.772081};
        var keflavik  = {lat:64.002941, lng: -22.553397};
        var akureyri = {lat:65.682985, lng: -18.090370};
        var paradis = {lat:64.145744, lng:-21.926051};

        var map;
        var infowindow;
        var infowindowLocation;

        function initialize() {
            mapProp = {
                center: pyrmont,
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            infowindow = new google.maps.InfoWindow({
            });

            // Try HTML5 geolocation.
            infowindowLocation = new google.maps.InfoWindow({map: map});
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infowindowLocation.setPosition(pos);
                    infowindowLocation.setContent('Location found.');
                    map.setCenter(pyrmont);
                }, function() {
                    handleLocationError(true, infowindowLocation, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infowindowLocation, map.getCenter());
            }

            var marker = new google.maps.Marker({
                position: alfabakki,
            });

            marker.setMap(map);
            google.maps.event.addListener(marker, 'click', function () {
                infowindow.setContent("Sambíóin Álfabakka");
                infowindow.open(map, this);
            });

            var marker1 = new google.maps.Marker({
                position: smarabio,
            });

            marker1.setMap(map);

            google.maps.event.addListener(marker1, 'click', function () {
                infowindow.setContent("Smárabíó");
                infowindow.open(map, this);
            });

            var marker2 = new google.maps.Marker({
                position: laugarasbio,
            });

            marker2.setMap(map);

            google.maps.event.addListener(marker2, 'click', function () {
                infowindow.setContent("Laugarásbíó");
                infowindow.open(map, this);
            });

            var marker3 = new google.maps.Marker({
                position: kringlubio,
            });

            marker3.setMap(map);

            google.maps.event.addListener(marker3, 'click', function () {
                infowindow.setContent("Kringlubíó");
                infowindow.open(map, this);
            });

            var marker4 = new google.maps.Marker({
                position: haskolabio,
            });

            marker4.setMap(map);

            google.maps.event.addListener(marker4, 'click', function () {
                infowindow.setContent("Háskólabíó");
                infowindow.open(map, this);
            });

            var marker5 = new google.maps.Marker({
                position: egilsholl,
            });

            marker5.setMap(map);

            google.maps.event.addListener(marker5, 'click', function () {
                infowindow.setContent("Sambíóin Egilshöll");
                infowindow.open(map, this);
            });

            var marker6 = new google.maps.Marker({
                position: keflavik,
            });

            marker6.setMap(map);

            google.maps.event.addListener(marker6, 'click', function () {
                infowindow.setContent("Sambíóin Keflavík");
                infowindow.open(map, this);
            });

            var marker7 = new google.maps.Marker({
                position: akureyri,
            });

            marker7.setMap(map);

            google.maps.event.addListener(marker7, 'click', function () {
                infowindow.setContent("Sambíóin Akureyri");
                infowindow.open(map, this);
            });

            var marker1 = new google.maps.Marker({
                position: paradis,
            });

            marker8.setMap(map);

            google.maps.event.addListener(marker8, 'click', function () {
                infowindow.setContent("Bíó Paradís");
                infowindow.open(map, this);
            });
        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                    'Error: The Geolocation service failed.' :
                    'Error: Your browser doesn\'t support geolocation.');
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>

<body>
<div id="googleMap"></div>
<h2><a href="/events">Back to events</a></h2>
</body>
</html>
