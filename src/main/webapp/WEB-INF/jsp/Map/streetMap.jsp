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
            var servive;
            var pyrmont = {lat: 64.144136, lng: -21.932653}; // fixed location
            var pos;
            function initMap() {


                map = new google.maps.Map(document.getElementById('map'), {
                    center: pyrmont,
                    zoom: 14
                });
                <%--
                                infowindow = new google.maps.InfoWindow();
                                service = new google.maps.places.PlacesService(map);

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
                --%>
                infoWindow = new google.maps.InfoWindow({map: map});
                service = new google.maps.places.PlacesService(map);

                // Try HTML5 geolocation.
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function(position) {
                        var pos = {
                            lat: position.coords.latitude,
                            lng: position.coords.longitude
                        };

                        infoWindow.setPosition(pos);
                        infoWindow.setContent('Location found.');
                        map.setCenter(pos);
                    }, function() {
                        handleLocationError(true, infoWindow, map.getCenter());
                    });
                } else {
                    // Browser doesn't support Geolocation
                    handleLocationError(false, infoWindow, map.getCenter());
                }

                // The idle event is a debounced event, so we can query & listen without
                // throwing too many requests at the server.
                map.addListener('idle', performSearch);
            }
            // Error gluggi um hvort location fundið eða ekki
            function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                infoWindow.setPosition(pos);
                infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
            }

            function performSearch() {
                var request = {
                    location: map.getCenter(),
                    //location: pyrmont
                    radius: 250, // Radius til að ákveða hversu marga punkta á að velja í kring
                    types: ['restaurant']


                };
                service.radarSearch(request, callback);
                console.log(map.getCenter());
            }
            console.log(getPosition(pos));
            function callback(results, status) {
                if (status !== google.maps.places.PlacesServiceStatus.OK) {
                    console.error(status);
                    return;
                }
                for (var i = 0, result; result = results[i]; i++) {
                    addMarker(result);
                }
            }

            function addMarker(place) {
                var marker = new google.maps.Marker({
                    map: map,
                    position: place.geometry.location,
                    icon: {
                        url: 'https://maps.gstatic.com/mapfiles/ms2/micons/red-dot.png',
                        anchor: new google.maps.Point(14, 14),
                        scaledSize: new google.maps.Size(18, 18)
                    }
                });

                google.maps.event.addListener(marker, 'click', function() {
                    service.getDetails(place, function(result, status) {
                        if (status !== google.maps.places.PlacesServiceStatus.OK) {
                            console.error(status);
                            return;
                        }
                        infoWindow.setContent(result.name + "<br/>" + result.rating + "<br/>" + result.formatted_address + "<br/>" + result.website + "<br/>" + result.formatted_phone_number );
                        infoWindow.open(map, marker);
                    });
                });
            }


<%--
            function callback(results, status) {
                if (status !== google.maps.places.PlacesServiceStatus.OK) {
                    console.error(status);
                    return;
                }
                for (var i = 0, result; result = results[i]; i++) {
                    addMarker(result);
                }
            }

            function addMarker(place) {
                var marker = new google.maps.Marker({
                    map: map,
                    position: place.geometry.location,

                });

                google.maps.event.addListener(marker, 'click', function() {
                    service.getDetails(place, function(result, status) {
                        if (status !== google.maps.places.PlacesServiceStatus.OK) {
                            console.error(status);
                            return;
                        }
                        infoWindow.setContent(result.name);
                        infoWindow.open(map, marker);
                    });
                });
            }

--%>
        </script>
    </head>
    <body>
    <div id="map"></div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmiPMXCC8z9ib1MGhhcGH-BgAjxC2Hp7g&libraries=places&callback=initMap"
        async defer></script>
</body>

<h1>${halloMsg}</h1>


</html>





















