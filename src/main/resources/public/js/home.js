'use strict';

$(document).ready(function () {
    /**
     *  Global variables.
     */
    let path,
        originMarker,
        destinationMarker,
        markers = [];

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
                    displayError(response, 'Could not get information about the station. Please retry later.')
                }
            });
        });
    }

    function displayError(response, message) {
        $('#message').text(message);
        $('#alert').slideDown();

        setTimeout(function () {
            $('#alert').hide();
        }, 3000);

        console.log(response);
    }

    /**
     * Adds a path on the map.
     *
     * @param path
     * @param map
     */
    function addLineToMap(path, map) {
        path.setMap(map);
    }

    /**
     * Adds two markers on the map. One for the origin and the another for the destination.
     *
     * @param origin
     * @param destination
     * @param map
     */
    function addDirectionMarkersToMap(origin, destination, map) {
        origin.setMap(map);
        destination.setMap(map);
    }

    /**
     * Updates information about the direction. i.e. distance, duration, etc..
     *
     * @param data
     */
    function updateInformation(data) {
        let distance = data.distance.value / 1000,
            duration = data.duration.value / 60,
            calories = getEnergyConsumption(
                localStorage.getItem('intensity'),
                duration,
                localStorage.getItem('weight')
            ),
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

                    path.setPath(points);
                    originMarker.setPosition(origin);
                    destinationMarker.setPosition(destination);

                    addLineToMap(path, map);
                    addDirectionMarkersToMap(originMarker, destinationMarker, map);
                    updateInformation(data.routes[0].legs[0]);

                    if ($('#directions').find('.content').css('display') == 'none')
                        toggleDirections();
                }

            },
            error: function (response) {
                displayError(response, 'Could not get the station list. Please retry later.')
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
            url: `/stations/lat/${map.getCenter().lng()}/lng/${map.getCenter().lat()}/`,
            dataType: 'json',
            success: function (data) {
                const ICON_SIZE = 38;

                let icon = {
                    url: "/images/velib-marker.png",
                    scaledSize: new google.maps.Size(ICON_SIZE, ICON_SIZE),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(0, 0)
                };

                markers.forEach(function (marker) {
                    marker.setMap(null);
                    marker = null;
                });

                markers = [];

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

                new MarkerClusterer(
                    map,
                    markers,
                    {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'}
                );
            },
            error: function (response) {
                displayError(response, 'Could not get the station list. Please retry later.')
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

    function disconnection() {
        document.getElementById('disconnectionForm').submit();
    }

    function createMarkers() {
        path = new google.maps.Polyline({
            strokeColor: "#FF0000",
            strokeOpacity: 1.0,
            strokeWeight: 2
        });
        originMarker = new google.maps.Marker({
            icon: 'https://mts.googleapis.com/maps/vt/icon/name=icons/spotlight/spotlight-waypoint-a.png&text=A&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1'
        });
        destinationMarker = new google.maps.Marker({
            icon: 'https://mts.googleapis.com/maps/vt/icon/name=icons/spotlight/spotlight-waypoint-b.png&text=B&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1'
        });
    }

    function addControlsToMap(map) {
        map.controls[google.maps.ControlPosition.BOTTOM_CENTER].push(document.getElementById('footer'));
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(document.getElementById('menuBtn'));
        map.controls[google.maps.ControlPosition.TOP_RIGHT].push(document.getElementById('directions'));
        map.controls[google.maps.ControlPosition.TOP_CENTER].push(document.getElementById('alert'));
    }

    function saveSettings() {
        let weight = $('#weight').val(), intensity = $('select[name=intensity]').val();

        localStorage.setItem('weight', weight);
        localStorage.setItem('intensity', intensity);
    }

    function toggleDirections() {
        $('#directions').find('.header, .content').toggle('slow');
    }

    /**
     * @returns {boolean}
     */
    function loadSettings() {
        let intensity, weight;

        if ((intensity = localStorage.getItem('intensity')) && intensity != undefined)
            $('#intensity').val(intensity);

        if ((weight = localStorage.getItem('weight')) && weight != undefined)
            $('#weight').val(weight);

        return intensity > 0 && weight > 0;
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
                    lat: 48.870393671603765,
                    lng: 2.384222472712587
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

                createMarkers();

                addControlsToMap(map);

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
        if (loadSettings() == false)
            $('#settingsModal').modal('show');

        $('#menu').find('a').on('click', closeNav);
        $('#menuBtn').on('click', openNav);
        $('#disconnection').on('click', disconnection);
        $('#save').on('click', saveSettings);

        $('#directions').on('click', toggleDirections);

        initMap();

        /**
         * Override of the ClusterIcon's event onAdd.
         * It prevents creating a direction when a cluster icon has been clicked.
         */
        ClusterIcon.prototype.onAdd = function () {
            this.div_ = document.createElement('DIV');
            if (this.visible_) {
                let pos = this.getPosFromLatLng_(this.center_);
                this.div_.style.cssText = this.createCss(pos);
                this.div_.innerHTML = this.sums_.text;
            }

            let panes = this.getPanes();
            panes.overlayMouseTarget.appendChild(this.div_);

            let self = this;
            google.maps.event.addDomListener(this.div_, 'click', function (e) {
                e.stopImmediatePropagation();
                self.triggerClusterClick();
            });
        };

    });
});

