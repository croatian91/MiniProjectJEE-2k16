'use strict';

$(document).ready(function () {
    /**
     *  Global variables.
     */
    let map,
        path,
        positionMarker,
        clusterMarker,
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
                    displayMessage('Could not get information about the station. Please retry later.', 'warning')
                }
            });
        });
    }

    function displayMessage(message, type) {
        $('#message').text(message);
        $('#alert').removeClass('alert-warning alert-info').addClass(`alert-${type}`).slideDown();

        setTimeout(function () {
            $('#alert').hide();
        }, 3000);
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
     * Updates information about the direction. i.e. distance, duration, etc..
     *
     * @param data
     */
    function updateInformation(data) {
        let distance = data.distance.value / 1000,
            duration = data.duration.value / 60,
            amount = getAmount(duration, {type: 'none'}),
            calories = getEnergyConsumption(
                localStorage.getItem('intensity'),
                duration,
                localStorage.getItem('weight')
            ),
            emission = getCO2Emission(distance);

        $('#distance').text(data.distance.text);
        $('#duration').text(data.duration.text);
        $('#amount').text(`${amount} €`);
        $('#calories').text(`${calories} Kcal`);
        $('#emission').text(`${emission} Kg`);

        $('#directionTable').find('tbody tr').remove();

        data.steps.forEach(function (step) {
            $('#directionTable').find('tbody').append(`<tr><td>${step.distance.text}</td><td>${step.html_instructions}</td></tr>`);
        });
    }

    /**
     * Retrieves the route between two points.
     * Adds the route and the markers on the map .
     *
     * @param data
     * @param map
     */
    function traceDirection(data, map) {
        if (data.hasOwnProperty('routes') && data.routes.length > 0) {
            let points = google.maps.geometry.encoding.decodePath(data.routes[0].overview_polyline.points),
                distance = 0.5,
                origin = data.routes[0].legs[0].start_location,
                destination = data.routes[0].legs[0].end_location;

            path.setPath(points);
            originMarker.setPosition(origin);
            destinationMarker.setPosition(destination);

            addLineToMap(path, map);

            addStationsToMap(map, origin.lat, origin.lng, distance, true); //origin
            addStationsToMap(map, destination.lat, destination.lng, distance);   //destination
        }
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
     * @param lat
     * @param lng
     * @param distance
     * @param remove
     */
    function addStationsToMap(map, lat, lng, distance, remove) {
        let url = (distance == undefined) ?
            `/stations/lat/${lat}/lng/${lng}/` :
            `/stations/distance/${distance}/lat/${lat}/lng/${lng}/`;

        $.ajax({
            type: "GET",
            url: url,
            dataType: 'json',
            success: function (data) {
                const ICON_SIZE = 38;

                let icon = {
                    url: "/images/velib-marker.png",
                    scaledSize: new google.maps.Size(ICON_SIZE, ICON_SIZE),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(0, 0)
                };

                if (remove == true) {
                    markers.forEach(function (marker) {
                        marker.setMap(null);
                        marker = null;
                    });

                    markers = [];
                }

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

                clusterMarker.clearMarkers();
                clusterMarker.addMarkers(markers);
            },
            error: function (response) {
                displayMessage('Could not get the station list. Please retry later.', 'warning')
            }
        });
    }

    function search(departure, arrival) {
        let url = (departure.hasOwnProperty('lat') && arrival.hasOwnProperty('lng')) ?
            `directions/origin/lat/${departure.lat}/lng/${departure.lng}/destination/lat/${arrival.lat}/lng/${arrival.lng}/` :
            `directions/departure/${$('#departure').val()}/arrival/${$('#arrival').val()}/`;

        $.ajax({
            type: "GET",
            url: url,
            dataType: 'json',
            success: function (data) {
                if (data.status == 'ZERO_RESULTS') {
                    displayMessage('No route available.', 'info');

                    return;
                }

                traceDirection(data, map);

                updateInformation(data.routes[0].legs[0]);

                if ($('#directions').find('.content').css('display') == 'none')
                    toggleDirections();
            },
            error: function (response) {
                displayMessage('Could not get the station list. Please retry later.', 'warning')
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
     * Estimate the amount.
     *
     * @param duration in minutes
     * @param subscription
     * @returns {number}
     */
    function getAmount(duration, subscription) {
        let amount, free;

        if (subscription.type == 'classic') {
            amount = 29;
            free = 30;
        } else if (subscription.type == 'none') {
            amount = 1.70;
            free = 30;
        } else {    //premium
            amount = 39;
            free = 45;
        }

        if (duration < free)
            amount += 0;
        else if (duration < free + 30)
            amount += 1;
        else if (duration < free + 60)
            amount += 2;
        else
            amount += (duration % 30) * 2;

        return Number(amount).toFixed(1);
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

    /**
     * Instantiate objects.
     *
     * @param map
     */
    function createMarkers(map) {
        path = new google.maps.Polyline({
            strokeColor: "#8082ff",
            strokeOpacity: 0.7,
            strokeWeight: 5
        });

        positionMarker = new google.maps.Marker({
            map: map,
            title: "You are here!",
        });

        originMarker = new google.maps.Marker({
            map: map,
            icon: 'https://mts.googleapis.com/maps/vt/icon/name=icons/spotlight/spotlight-waypoint-a.png&text=A&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1'
        });

        destinationMarker = new google.maps.Marker({
            map: map,
            icon: 'https://mts.googleapis.com/maps/vt/icon/name=icons/spotlight/spotlight-waypoint-b.png&text=B&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1'
        });

        clusterMarker = new MarkerClusterer(
            map,
            markers,
            {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'}
        );
    }

    function createSearchBoxes() {
        let departure = document.getElementById('departure'),
            arrival = document.getElementById('arrival');

        new google.maps.places.SearchBox(departure);
        new google.maps.places.SearchBox(arrival);
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

                map = new google.maps.Map(document.getElementById('map'), {
                    center: position, //{lat: position.coords.latitude, lng: position.coords.longitude},
                    zoom: 14
                });

                map.addListener('click', function (event) {
                    update_timeout = setTimeout(function () {
                        let lat = event.latLng.lat(),
                            lng = event.latLng.lng();

                        search(position, {lat: lat, lng: lng});
                    }, 200);
                });

                google.maps.event.addListener(map, 'bounds_changed', function () {
                    toggleBounce(positionMarker);
                });

                google.maps.event.addListener(map, 'dblclick', function () {
                    clearTimeout(update_timeout);
                });

                addControlsToMap(map);

                addStationsToMap(map, map.getCenter().lng(), map.getCenter().lat());

                createMarkers(map);

                createSearchBoxes();

                toggleBounce(positionMarker);

                positionMarker.setPosition(position);
            });
        }
    }

    $(window).load(function () {
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

        initMap();

        if (loadSettings() == false)
            $('#settingsModal').modal('show');

        $('#menu').find('a').on('click', closeNav);
        $('#menuBtn').on('click', openNav);
        $('#disconnection').on('click', disconnection);
        $('#saveBtn').on('click', saveSettings);
        $('#searchBtn').on('click', search);
        $('#directions').on('click', toggleDirections);
        $('#departureBtn').on('click', function () {
            $('#departure').val('');
        });
        $('#arrivalBtn').on('click', function () {
            $('#arrival').val('');
        });
    });
});

