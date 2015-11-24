<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="is">
<head>
    <title>Sports streetMap</title>
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
        }
    </style>
    <script>
        var map;
        var infowindow;
        var infowindowLocation;

        function initMap() {
            var pyrmont = {lat: 64.13, lng: -21.832653};

            map = new google.maps.Map(document.getElementById('map'), {
                center: pyrmont,
                zoom: 12
            });

            infowindow = new google.maps.InfoWindow();

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

            var service = new google.maps.places.PlacesService(map);
            service.nearbySearch({
                location: pyrmont,
                radius: 50000,
                types: ['stadium']
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
                infowindow.setContent(place.name);
                infowindow.open(map, this);
            });
        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                    'Error: The Geolocation service failed.' :
                    'Error: Your browser doesn\'t support geolocation.');
        }

    </script>
</head>
<body>
<div id="map"></div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmiPMXCC8z9ib1MGhhcGH-BgAjxC2Hp7g&signed_in=true&libraries=places&callback=initMap" async defer></script>
<h2><a href="/events">Back to events</a></h2>
</body>
</html>