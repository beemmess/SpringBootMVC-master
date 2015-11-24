<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Simple Polylines</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map {
            height: 80%;
            width: 80%;
        }
    </style>
</head>
<body>
<div id="map"></div>
<script>

    // This example creates a 2-pixel-wide red polyline showing the path of William
    // Kingsford Smith's first trans-Pacific flight between Oakland, CA, and
    // Brisbane, Australia.

    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 13,
            center: {lat: 64.148861, lng: -21.935008},
            mapTypeId: google.maps.MapTypeId.TERRAIN
        });

        var flightPlanCoordinates = [


            {lat: 64.142615, lng: -21.927808},
            {lat: 64.146475, lng: -21.933065},
            {lat: 64.147210, lng: -21.936284},
            {lat: 64.149390, lng: -21.932819},
            {lat: 64.148861, lng: -21.935008},
            {lat: 64.149483, lng: -21.939171},
            {lat: 64.148290, lng: -21.940394},
            {lat: 64.147995, lng: -21.940877},
            {lat: 64.147597, lng: -21.938602},
            {lat: 64.146788, lng: -21.939203},
            {lat:  64.147186, lng: -21.942089},
            {lat: 64.144484, lng: -21.945156},
            {lat: 64.143076, lng: -21.943664}

        ];
        var flightPath = new google.maps.Polyline({
            path: flightPlanCoordinates,
            geodesic: true,
            strokeColor: '#FF0000',
            strokeOpacity: 1.0,
            strokeWeight: 2
        });

        flightPath.setMap(map);

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



            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });

        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
    }

</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmiPMXCC8z9ib1MGhhcGH-BgAjxC2Hp7g&signed_in=true&callback=initMap"></script>
</body>
</html>