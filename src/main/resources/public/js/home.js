'use strict';

$(document).ready(function () {

    /**
     * Adds a listener for each marker.
     * On a click event, retrieve information about the station (marker clicked).
     * Creates an info window containing information.
     * Opens the info window.
     *
     * @param marker Google map marker object
     */
    function addMarkerListener(marker) {
        marker.addListener('click', function () {
            let info = new google.maps.InfoWindow();

            $.ajax({
                type: "GET",
                url: `/stations/station/${marker.number}`,
                dataType: 'json',
                success: function (data) {
                    info.setPosition(marker.position);
                    info.setContent([
                            '<strong>address: </strong>' + data.address,
                            '<strong>banking: </strong>' + data.banking,
                            '<strong>status: </strong>' + data.status,
                            '<strong>bike_stands: </strong>' + data.bike_stands,
                            '<strong>available_bike_stands: </strong>' + data.available_bike_stands,
                            '<strong>available_bikes: </strong>' + data.available_bikes,
                            '<strong>last_update: </strong>' + data.last_update
                        ].join('<br/>')
                    );

                    info.open(marker.getMap(), marker);
                },
                error: function (response) {
                    console.log(response);
                }
            });
        });
    }

    /**
     * Adds a path on the map.
     *
     * @param path
     * @param map
     */
    function addLine(path, map) {
        path.setMap(map);
    }

    /**
     * Removes the path on the map.
     *
     * @param path
     */
    function removeLine(path) {
        path.setMap(null);
    }

    /**
     * Adds two markers on the map. One for the origin and the another for the destination.
     *
     * @param origin
     * @param destination
     * @param map
     */
    function addDirectionMarkers(origin, destination, map) {
        origin.setMap(map);
        destination.setMap(map);
    }

    /**
     * Removes markers of the direction.
     *
     * @param origin
     * @param destination
     */
    function removeDirectionMarkers(origin, destination) {
        origin.setMap(null);
        destination.setMap(null);
    }

    /**
     * Updates information about the direction. i.e. distance, duration, etc..
     *
     * @param data
     */
    function updateInformation(data) {
        let distance = data.distance.value / 1000,
            duration = data.duration.value / 60,
            calories = getEnergyConsumption(4, duration, 65),
            emission = getCO2Emission(distance);

        $('#distance').text(data.distance.text);
        $('#duration').text(data.duration.text);
        $('#calories').text(calories + ' Kcal');
        $('#emission').text(emission + ' Kg');

        $('#directionTable').find('tbody tr').remove();

        data.steps.forEach(function (step) {
            $('#directionTable').find('tbody').append(`<tr><td>${step.distance.text}</td><td>${step.html_instructions}</td></tr>`);
        });
    }

    /**
     * Retrieves the route between two points.
     * Adds the route and the markers on the map .
     *
     * @param origin
     * @param destination
     * @param map
     */
    function traceDirection(origin, destination, map) {
        $.ajax({
            type: "GET",
            url: `directions/origin/lat/${origin.lat}/lng/${origin.lng}/destination/lat/${destination.lat}/lng/${destination.lng}/`,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                if (data.hasOwnProperty('routes') && data.routes.length > 0) {
                    let points = google.maps.geometry.encoding.decodePath(data.routes[0].overview_polyline.points);
                    let path = new google.maps.Polyline({
                        path: points,
                        strokeColor: "#FF0000",
                        strokeOpacity: 1.0,
                        strokeWeight: 2
                    });

                    let originMarker = new google.maps.Marker({
                        position: data.routes[0].legs[0].start_location,
                        icon: 'https://mts.googleapis.com/maps/vt/icon/name=icons/spotlight/spotlight-waypoint-a.png&text=A&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1'
                    });

                    let destinationMarker = new google.maps.Marker({
                        position: data.routes[0].legs[0].end_location,
                        icon: 'https://mts.googleapis.com/maps/vt/icon/name=icons/spotlight/spotlight-waypoint-b.png&text=B&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1'
                    });

                    addLine(path, map);
                    addDirectionMarkers(originMarker, destinationMarker, map);
                    updateInformation(data.routes[0].legs[0]);
                }

            },
            error: function (response) {
                console.log(response);
            }
        });
    }

    /**
     * Opens the side menu.
     */
    function openNav() {
        $('#menu').css('width', '250px');
        $('#map').css('marginLeft', '250px');
    }

    /**
     * Closes the side menu.
     */
    function closeNav() {
        $('#menu').css('width', '0');
        $('#map').css('marginLeft', '0');
    }

    /**
     * The marker is animated. i.e. bounces.
     *
     * @param marker
     */
    function toggleBounce(marker) {
        marker.setAnimation(google.maps.Animation.BOUNCE);
    }

    /**
     * Retrieves stations within the same county/district as the client.
     * Creates a marker referring each station.
     * Finally, adds the markers to the google map.
     *
     * Latitude and Longitude are swapped because of the GeoJSON's structure.
     *
     * @param map Google map object
     */
    function addStationsToMap(map) {
        $.ajax({
            type: "GET",
            url: `/stations/distance/0.5/lat/${map.getCenter().lat()}/lng/${map.getCenter().lng()}/`,
            dataType: 'json',
            success: function (data) {
                const ICON_SIZE = 38;

                let markers = [],   //markers to be displayed
                    icon = {
                        url: "/images/velib-marker.png",
                        scaledSize: new google.maps.Size(ICON_SIZE, ICON_SIZE),
                        origin: new google.maps.Point(0, 0),
                        anchor: new google.maps.Point(0, 0)
                    };

                data.forEach(function (place) { //for each station...
                    let marker = new google.maps.Marker({
                        map: map,
                        title: place.name,
                        icon: icon,
                        position: new google.maps.LatLng(
                            parseFloat(place.location.coordinates[1]),  //Lat
                            parseFloat(place.location.coordinates[0])   //Lng
                        )
                    });

                    //useful to retrieve information about the station. (station's number).
                    marker.number = place.number;

                    addMarkerListener(marker);

                    markers.push(marker);
                });
            },
            error: function (response) {
                console.log(response);
            }
        });
    }

    /**
     * Estimate the CO2 emission of a car.
     * The constant is a generic factor calculated
     * using the latest version (6.1) of Bilan Carbone®.
     *
     * @param distance in kms.
     * @returns {number} in kgs.
     */
    function getCO2Emission(distance) {
        return Number((0.06981 * distance).toFixed(1));
    }

    /**
     * Estimate the consumption of energy driving a bicycle.
     *
     * @param met intensity level. soft: MET = 4, average: MET = 7, intense: MET = 10, very intense: MET = 14
     * @param time in minutes
     * @param weight in kilograms
     * @returns {number} in Kcal
     */
    function getEnergyConsumption(met, time, weight) {
        return Number((met * 3.5 * weight * time / 200).toFixed(1));
    }

    /**
     * Disconnection of the user.
     */
    function disconnection() {
        document.getElementById('disconnectionForm').submit();
    }

    /**
     * Gets the current position via geolocation.
     * Adds stations to the map.
     */
    function initMap() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                //For testing
                position = {
                    lat: 48.893268664697416,
                    lng: 2.412715733388685
                };

                let update_timeout = null;

                let map = new google.maps.Map(document.getElementById('map'), {
                    center: position, //{lat: position.coords.latitude, lng: position.coords.longitude},
                    zoom: 14
                });

                let positionMarker = new google.maps.Marker({
                    map: map,
                    title: "You are here!",
                    position: position
                });

                toggleBounce(positionMarker);

                map.controls[google.maps.ControlPosition.BOTTOM_CENTER].push(document.getElementById('footer'));
                map.controls[google.maps.ControlPosition.TOP_LEFT].push(document.getElementById('menuBtn'));
                map.controls[google.maps.ControlPosition.TOP_RIGHT].push(document.getElementById('directions'));

                map.addListener('click', function (event) {
                    update_timeout = setTimeout(function () {
                        let lat = event.latLng.lat(),
                            lng = event.latLng.lng();

                        traceDirection(position, {lat: lat, lng: lng}, map);
                    }, 200);
                });

                google.maps.event.addListener(map, 'dblclick', function () {
                    clearTimeout(update_timeout);
                });

                addStationsToMap(map);
            });
        }
    }

    $(window).load(function () {
        $('#settingsModal').modal('show');

        $('#menu').find('a').on('click', closeNav);
        $('#menuBtn').on('click', openNav);
        $('#disconnection').on('click', disconnection);

        initMap();
    });
});


