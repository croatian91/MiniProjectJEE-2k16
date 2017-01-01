'use strict';

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

function getDirection(origin, destination) {
    $.ajax({
        type: "GET",
        url: `directions/origin/lat/${origin.lat}/lng/${origin.lng}/destination/lat/${destination.lat}/lng/${destination.lng}/`,
        dataType: 'json',
        success: function (data) {
            console.log(data);
        },
        error: function (response) {
            console.log(response);
        }
    });
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
        url: `/stations/county/lat/${map.getCenter().lng()}/lng/${map.getCenter().lat()}/`,
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
 * Estimate the consumption of energy driving a bicycle.
 *
 * @param met intensity level. soft: MET = 4, average: MET = 7, intense: MET = 10, very intense: MET = 14
 * @param time in minutes
 * @param weight in kilograms
 * @returns {number} in Kcal
 */
function getEnergyConsumption(met, time, weight) {
    return met * 3.5 * weight * time / 200;
}

/**
 * Gets the current position via geolocation.
 * Adds stations to the map.
 */
function initMap() {
    $(document).ready(function () {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                //For testing
                let pos = {
                    lat: 48.8645278209514,
                    lng: 2.416170724425901
                };

                let map = new google.maps.Map(document.getElementById('map'), {
                    center: pos, //{lat: position.coords.latitude, lng: position.coords.longitude}
                    zoom: 14
                });

                map.controls[google.maps.ControlPosition.BOTTOM_CENTER].push($('.footer')[0]);

                getDirection(
                    {lat: 48.8645278209514, lng: 2.416170724425901},
                    {lat: 48.87242006305313, lng: 2.348395236282807}
                );

                addStationsToMap(map);
            });
        }
    });
}
