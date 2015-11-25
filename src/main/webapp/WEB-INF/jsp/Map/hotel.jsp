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
<h2><a href="/streetmap/restaurants">Restaurants</a></h2>
<h2><a href="/streetmap/museum">museum</a></h2>

<h1>Korta s</h1>
<p>${texti}</p>
<tr>
    <td>Type of interest:</td>

    <td><input name="mapType" type="text" id="mapSearch"></td>
</tr>
<tr><td><input type="submit" VALUE="Submit"/></td></tr>

<div id="controls">
    <select id="country">
        <option value=" ">Nothing</option>
        <option value="musuem">Musuem</option>
        <option value="resturant">Restaurant</option>

    </select>
</div>

<%--
Fyrsta tegund af google maps
--%>

<head>
    <title>Place searches</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
        html, body {
            height: 80%;
            margin: 0;
            padding: 0;

        }
        #map {
            height: 100%;
            width: 100%;
        }


    </style>

    <script>

        var map, places, infoWindow;
        var markers = [];
        var servive;
        var autocomplete;
        var pyrmont = {lat: 64.144136, lng: -21.932653}; // fixed location
        var pos;


        // initMap byrjar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function initMap() {


            map = new google.maps.Map(document.getElementById('map'), {
                center: pyrmont,
                zoom: 14
            });

            infoWindow = new google.maps.InfoWindow({map: map});
            service = new google.maps.places.PlacesService(map);
            // mapSearch er id
            var mapSearch = document.getElementById("mapSearch").value;

            // Create the autocomplete object and associate it with the UI input control.
            // Restrict the search to the default country, and to place type "cities".
            autocomplete = new google.maps.places.Autocomplete(
                    /** @type {!HTMLInputElement} */ (
                            document.getElementById('mapSearch')), {
                    });
            places = new google.maps.places.PlacesService(map);

            autocomplete.addListener('place_changed', onPlaceChanged);

           // document.getElementById('country').addEventListener(
             //       'change', onPlaceChanged);


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
                    console.log(pos);
                    //console.log(pos);
                    //positionSearch(pos);


                }, function() {
                    handleLocationError(true, infoWindow, map.getCenter());
                performSearch()
                });

            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }


            // The idle event is a debounced event, so we can query & listen without
            // throwing too many requests at the server.
            map.addListener('idle', performSearch);

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        }// initMap endar hér %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        // Error gluggi um hvort location fundið eða ekki
        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                    'Error: The Geolocation service failed.' :
                    'Error: Your browser doesn\'t support geolocation.');
        }

        // When the user selects a city, get the place details for the city and
        // zoom the map in on the city.
        function onPlaceChanged() {
            var country = document.getElementById('country').value;
            var place = autocomplete.getPlace();
            if (place.geometry) {
                map.panTo(place.geometry.location);
                map.setZoom(14);

                performSearch();
            } else {
                document.getElementById('mapSearch').placeholder = 'Enter a type';
            }
        }


        function performSearch() {
            clearMarkers();
            var leit = country;
            var mapSearch = document.getElementById('mapSearch').value;
            var request = {
                location: map.getCenter(),
                //location: pos,
                radius: 5000, // Radius til að ákveða hversu marga punkta á að velja í kring
                keyword: ['hotel']
            };
            service.radarSearch(request, callback);
            //service.textSearch(request, callback);
        }

        function callback(results, status) {

            if (status !== google.maps.places.PlacesServiceStatus.OK) {
                console.error(status);
                return;
            }
            clearMarkers();
            for (var i = 0, result; result = results[i]; i++) {
                addMarker(result);
            }
        }

        function clearMarkers() {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(null);
            }
            markers = [];
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
                    var para = document.createElement("p");
                    var node = document.createTextNode(result.name+ "   rating:     " + result.rating);
                    para.appendChild(node);
                    var element = document.getElementById("para");
                    element.appendChild(para);
                });
            });

            markers.push(marker);
        }

    </script>
</head>
<body>

<div id="map"></div>
<div id="para" align="top"></div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmiPMXCC8z9ib1MGhhcGH-BgAjxC2Hp7g&libraries=places&callback=initMap"
        async defer></script>
</body>

<h1>${halloMsg}</h1>


</html>





















