<%@ page import="project.persistence.entities.Info.CurrencyConverter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.validation.constraints.Null" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>









<!DOCTYPE html>
<html>
<head>
    <title>Place Autocomplete Hotel Search</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map {
            height: 100%;
        }
    </style>

    <style>
        table {
            font-size: 12px;
        }
        #map {
            width: 880px;
            top: 40px;
        }
        #listing {
            position: absolute;
            width: 200px;
            height: 550px;
            overflow: auto;
            left: 882px;
            top: 40px;
            cursor: pointer;
            overflow-x: hidden;
        }
        #findhotels {
            position: absolute;
            text-align: right;
            width: 100px;
            font-size: 14px;
            padding: 4px;
            z-index: 5;
            background-color: #fff;
        }
        #locationField {
            position: absolute;
            width: 190px;
            height: 25px;
            left: 108px;
            top: 0px;
            z-index: 5;
            background-color: #fff;
        }
        #controls {
            position: absolute;
            left: 300px;
            width: 140px;
            top: 0px;
            z-index: 5;
            background-color: #fff;
        }
        #autocomplete {
            width: 100%;
        }
        #country {
            width: 100%;
        }
        .placeIcon {
            width: 20px;
            height: 34px;
            margin: 4px;
        }
        .hotelIcon {
            width: 24px;
            height: 24px;
        }
        #resultsTable {
            border-collapse: collapse;
            width: 240px;

        }
        #rating {
            font-size: 13px;
            font-family: Arial Unicode MS;
        }
        .iw_table_row {
            height: 18px;
        }
        .iw_attribute_name {
            font-weight: bold;
            text-align: right;
        }
        .iw_table_icon {
            text-align: right;
        }
    </style>
</head>

<body>

<div id="findhotels">
    Find hotels in:
</div>

<div id="locationField">
    <input id="autocomplete" placeholder="Enter a city" type="text" />
</div>





<div id="map"></div>

<div id="listing">
    <table id="resultsTable">
        <tbody id="results"></tbody>
    </table>
</div>

<div style="display: none">
    <div id="info-content">
        <table>
            <tr id="iw-url-row" class="iw_table_row">
                <td id="iw-icon" class="iw_table_icon"></td>
                <td id="iw-url"></td>
            </tr>
            <tr id="iw-address-row" class="iw_table_row">
                <td class="iw_attribute_name">Address:</td>
                <td id="iw-address"></td>
            </tr>
            <tr id="iw-phone-row" class="iw_table_row">
                <td class="iw_attribute_name">Telephone:</td>
                <td id="iw-phone"></td>
            </tr>
            <tr id="iw-rating-row" class="iw_table_row">
                <td class="iw_attribute_name">Rating:</td>
                <td id="iw-rating"></td>
            </tr>
            <tr id="iw-website-row" class="iw_table_row">
                <td class="iw_attribute_name">Website:</td>
                <td id="iw-website"></td>
            </tr>
            <tr id="iw-type-row" class="iw_table_row">
                <td class="iw_attribute_name">Type:</td>
                <td id="iw-type"></td>
            </tr>
        </table>
    </div>
</div>

<script>

    var map, places, infoWindow, infoWindow1;
    var markers = [];
    var servive;
    var autocomplete;
    var pyrmont = {lat: 64.144136, lng: -21.932653}; // fixed location
    var MARKER_PATH = 'https://maps.gstatic.com/intl/en_us/mapfiles/marker_green';
    var hostnameRegexp = new RegExp('^https?://.+?/');


    // initMap byrjar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function initMap() {


        map = new google.maps.Map(document.getElementById('map'), {
            center: pyrmont,
            zoom: 14
        });

        infoWindow = new google.maps.InfoWindow({
            content: document.getElementById('info-content')
        });
        //service = new google.maps.places.PlacesService(map);
        // mapSearch er id
        //var mapSearch = document.getElementById("mapSearch").value;

        // Create the autocomplete object and associate it with the UI input control.
        // Restrict the search to the default country, and to place type "cities".

        var autocomplete = document.getElementById("autocomplete").value;

        // Create the autocomplete object and associate it with the UI input control.
        // Restrict the search to the default country, and to place type "cities".
        autocomplete = new google.maps.places.Autocomplete(
                /** @type {!HTMLInputElement} */ (
                        document.getElementById('autocomplete')), {
                });
        places = new google.maps.places.PlacesService(map);

        autocomplete.addListener('place_changed', onPlaceChanged);

        // document.getElementById('country').addEventListener(
        //       'change', onPlaceChanged);


        // Try HTML5 geolocation.
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {

                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };

                var marker = new google.maps.Marker({
                    position: pos,
                    map: map,
                    title: 'Location Found'
                });

            }, function() {
                handleLocationError(true, infoWindow1, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow1, map.getCenter());
        }



        // The idle event is a debounced event, so we can query & listen without
        // throwing too many requests at the server.
        map.addListener('idle', search);


        //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    }// initMap endar hér %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    // Error gluggi um hvort location fundið eða ekki
    function handleLocationError(browserHasGeolocation, infoWindow1, pos) {
        infoWindow1.setPosition(pos);
        infoWindow1.setContent(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
    }


    // When the user selects a city, get the place details for the city and
    // zoom the map in on the city.
    function onPlaceChanged() {
        var place = autocomplete.getPlace();
        if (place.geometry) {
            map.panTo(place.geometry.location);
            map.setZoom(14);
            search();
        } else {
            document.getElementById('autocomplete').placeholder = 'Enter a type';
        }
    }


    function search() {
        var search = {
            bounds: map.getBounds(),
            keyword: ['restaurant']
        };

        places.nearbySearch(search, function(results, status) {
            if (status === google.maps.places.PlacesServiceStatus.OK) {
                clearResults();
                clearMarkers();
                // Create a marker for each hotel found, and
                // assign a letter of the alphabetic to each marker icon.
                for (var i = 0; i < results.length; i++) {
                    var markerLetter = String.fromCharCode('A'.charCodeAt(0) + i);
                    var markerIcon = MARKER_PATH + markerLetter + '.png';
                    // Use marker animation to drop the icons incrementally on the map.
                    markers[i] = new google.maps.Marker({
                        position: results[i].geometry.location,
                        animation: google.maps.Animation.DROP,
                        icon: markerIcon
                    });
                    // If the user clicks a hotel marker, show the details of that hotel
                    // in an info window.
                    markers[i].placeResult = results[i];
                    google.maps.event.addListener(markers[i], 'click', showInfoWindow);
                    var restaurantName = markers[i]
                    console.log(restaurantName);
                    setTimeout(dropMarker(i), i * 100);
                    addResult(results[i], i);
                }
            }
        });
    }

    function clearMarkers() {
        for (var i = 0; i < markers.length; i++) {
            if (markers[i]) {
                markers[i].setMap(null);
            }
        }
        markers = [];
    }




    function dropMarker(i) {
        return function() {
            markers[i].setMap(map);
        };
    }

    function addResult(result, i) {
        var results = document.getElementById('results');
        var markerLetter = String.fromCharCode('A'.charCodeAt(0) + i);
        var markerIcon = MARKER_PATH + markerLetter + '.png';

        var tr = document.createElement('tr');
        tr.style.backgroundColor = (i % 2 === 0 ? '#F0F0F0' : '#FFFFFF');
        tr.onclick = function() {
            google.maps.event.trigger(markers[i], 'click');
        };

        var iconTd = document.createElement('td');
        var nameTd = document.createElement('td');
        var icon = document.createElement('img');
        icon.src = markerIcon;
        icon.setAttribute('class', 'placeIcon');
        icon.setAttribute('className', 'placeIcon');
        var name = document.createTextNode(result.name);
        iconTd.appendChild(icon);
        nameTd.appendChild(name);
        tr.appendChild(iconTd);
        tr.appendChild(nameTd);
        results.appendChild(tr);
    }

    function clearResults() {
        var results = document.getElementById('results');
        while (results.childNodes[0]) {
            results.removeChild(results.childNodes[0]);
        }
    }

    // Get the place details for a hotel. Show the information in an info window,
    // anchored on the marker for the hotel that the user selected.
    function showInfoWindow() {
        var marker = this;
        places.getDetails({placeId: marker.placeResult.place_id},
                function(place, status) {
                    if (status !== google.maps.places.PlacesServiceStatus.OK) {
                        return;
                    }
                    infoWindow.open(map, marker);
                    buildIWContent(place);
                });
    }



    // Load the place information into the HTML elements used by the info window.
    function buildIWContent(place) {
        document.getElementById('iw-icon').innerHTML = '<img class="hotelIcon" ' +
                'src="' + place.icon + '"/>';
        document.getElementById('iw-url').innerHTML = place.name;
        document.getElementById('iw-type').innerHTML = '<b>' + place.types[0] + '</b>';
        document.getElementById('iw-address').textContent = place.vicinity;

        if (place.formatted_phone_number) {
            document.getElementById('iw-phone-row').style.display = '';
            document.getElementById('iw-phone').textContent =
                    place.formatted_phone_number;
        } else {
            document.getElementById('iw-phone-row').style.display = 'none';
        }

        // Assign a five-star rating to the hotel, using a black star ('&#10029;')
        // to indicate the rating the hotel has earned, and a white star ('&#10025;')
        // for the rating points not achieved.
        if (place.rating) {
            var ratingHtml = '';
            for (var i = 0; i < 5; i++) {
                if (place.rating < (i + 0.5)) {
                    ratingHtml += '&#10025;';
                } else {
                    ratingHtml += '&#10029;';
                }
                document.getElementById('iw-rating-row').style.display = '';
                document.getElementById('iw-rating').innerHTML = ratingHtml;
            }
        } else {
            document.getElementById('iw-rating-row').style.display = 'none';
        }

        // The regexp isolates the first part of the URL (domain plus subdomain)
        // to give a short URL for displaying in the info window.
        if (place.website) {
            var fullUrl = place.website;
            var website = hostnameRegexp.exec(place.website);
            if (website === null) {
                website = 'http://' + place.website + '/';
                fullUrl = website;
            }
            document.getElementById('iw-website-row').style.display = '';
            document.getElementById('iw-website').textContent = website;
        } else {
            document.getElementById('iw-website-row').style.display = 'none';
        }
    }





</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmiPMXCC8z9ib1MGhhcGH-BgAjxC2Hp7g&libraries=places&callback=initMap"
        async defer></script>

<p>This example uses the addEventListener() method to attach a click event to a button.</p>

<sf:form method="POST" commandName="allReviews" action="/streetmap/restaurants">
<table>
    <tr>
        <td> User Name:</td>
        <td>${currentUser.username}</td>
    </tr>

    <tr>
        <td>Restaurant:</td>
        <td>
        <form:textarea disabled="true" path="restaurant" id="RestaurantName"/>
    </td>

    </tr>

    <tr>
        <td>Review:</td>
        <td> <form:textarea path="review" /></td>
    </tr>
</table>
    <input type="submit" VALUE="Post It!"/>
</sf:form>


<script>
    document.getElementById("results").addEventListener("click", Restaurant);

    function Restaurant() {
        document.getElementById("RestaurantName").innerHTML = document.getElementById("iw-url").innerHTML;
        document.getElementById("RestaurantType").innerHTML = document.getElementById("iw-type").innerHTML;

        /*
        var seeReviewsButton = document.createElement("BUTTON");
        var seeReviewsButtonText = document.createTextNode("See reviews");
        seeReviewsButton.appendChild(seeReviewsButtonText);
        var restaurantReviewsForm = document.getElementById("reviewsForm");
        restaurantReviewsForm.appendChild(seeReviewsButton);
        */
    }

</script>

</body>
</html>