<%@ page import="project.persistence.entities.Info.CurrencyConverter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>

<head>
    <title>Events</title>
</head>

<h1>Korta s</h1>
<p>${texti}</p>

<%--
Fyrsta tegund af google maps
--%>

    <head>
        <title>Place searches</title>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
        <meta charset="utf-8">
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;

            }
            #map {
                height: 80%;
                witdh: 80%;
            }
        </style>
        <script>
            var map;
            var infowindow;

            function initMap() {
                var pyrmont = {lat: 64.144136, lng: -21.932653};

                map = new google.maps.Map(document.getElementById('map'), {
                    center: pyrmont,
                    zoom: 14
                });

                infowindow = new google.maps.InfoWindow();

                var service = new google.maps.places.PlacesService(map);
                service.nearbySearch({
                    location: pyrmont,
                    radius: 2000,
                    types: ['cafe'],
                }, callback);
                var service2 = new google.maps.places.PlacesService(map);
                service.nearbySearch({
                    location: pyrmont,
                    radius: 2000,
                    types: ['bar'],
                }, callback);
                var service3 = new google.maps.places.PlacesService(map);
                service.nearbySearch({
                    location: pyrmont,
                    radius: 2000,
                    types: ['restaurant'],
                }, callback);
            }

            function callback(results, status) {
                if (status === google.maps.places.PlacesServiceStatus.OK) {
                    for (var i = 0; i < results.length; i++) {
                        createMarker(results[i]);
                    }
                }
            }

            function createMarker(place) {
                var placeLoc = place.geometry.location;
                var marker = new google.maps.Marker({
                    map: map,
                    position: place.geometry.location
                });
                google.maps.event.addListener(marker, 'click', function() {
                    infowindow.setContent(place.name + "<br />"+"Type: " + place.types[0] +", "+place.types[1] + "<br />"+ "Rating: "  + place.rating );
                    infowindow.open(map, this);
                });
            }

        </script>
    </head>
    <body>
    <div id="map"></div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmiPMXCC8z9ib1MGhhcGH-BgAjxC2Hp7g&libraries=places&callback=initMap"
        async defer></script>
</body>

<h1>${halloMsg}</h1>


</html>





















