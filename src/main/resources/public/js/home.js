'use strict';

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
                type: 'GET',
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
                error: function () {
                    displayMessage('Could not get information about the station. Please retry later.', 'warning')
                }
            });
        });
    }

    function displayMessage(message, type) {
        $('#message').text(message);
        $('#alert').removeClass('alert-warning alert-danger alert-success alert-info').addClass(`alert-${type}`).slideDown();

        setTimeout(function () {
            $('#alert').hide();
        }, 2000);
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

        $('#favoriteBtn').css('display', 'block');

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
                latlngbounds,
                origin = data.routes[0].legs[0].start_location,
                destination = data.routes[0].legs[0].end_location;

            path.setPath(points);
            originMarker.setPosition(origin);
            destinationMarker.setPosition(destination);

            originMarker.address = data.routes[0].legs[0].start_address;
            destinationMarker.address = data.routes[0].legs[0].end_address;

            latlngbounds = new google.maps.LatLngBounds();

            latlngbounds.extend(origin);
            latlngbounds.extend(destination);

            map.fitBounds(latlngbounds);

            console.log(data);

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
            type: 'GET',
            url: url,
            dataType: 'json',
            success: function (data) {
                const ICON_SIZE = 38;

                let _ctx = $("meta[name='_ctx']").attr("content"),
                    icon = {
                        url: `${_ctx}/images/velib-marker.png`,
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
            error: function () {
                displayMessage('Could not get the station list. Please retry later.', 'warning')
            }
        });
    }

    function findFavorite() {
        return $.ajax({
            type: 'POST',
            url: "/favorites/findOne",
            dataType: 'json',
            data: JSON.stringify({
                startAddress: originMarker.address,
                endAddress: destinationMarker.address,
                departure: {
                    lat: originMarker.getPosition().lat(),
                    lng: originMarker.getPosition().lng()
                },
                arrival: {
                    lat: destinationMarker.getPosition().lat(),
                    lng: destinationMarker.getPosition().lng()
                }
            }),
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            success: function (favorite) {
                return favorite;
            },
            error: function () {
                displayMessage('Could not verify if favorite exists', 'danger');
            }
        });
    }

    function addDirectionToFavorites() {
        if (typeof originMarker.getPosition() == 'undefined')  return;

        $.ajax({
            type: 'PUT',
            url: "/favorites/add",
            dataType: 'json',
            data: JSON.stringify({
                startAddress: originMarker.address,
                endAddress: destinationMarker.address,
                departure: {
                    lat: originMarker.getPosition().lat(),
                    lng: originMarker.getPosition().lng()
                },
                arrival: {
                    lat: destinationMarker.getPosition().lat(),
                    lng: destinationMarker.getPosition().lng()
                }
            }),
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            success: function (data) {
                if (data.hasOwnProperty('id')) {
                    toggleFavoriteButton();
                    displayMessage('Direction added to favorites successfully!', 'success');
                }
            },
            error: function () {
                displayMessage('Could not add to favorites. Please retry later.', 'danger');
            }
        });
    }

    function removeDirectionFromFavorites(id) {
        $.ajax({
            type: 'DELETE',
            url: `/favorites/delete/${id}`,
            dataType: 'json',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            success: function () {
                toggleFavoriteButton();
                displayMessage('Direction removed from favorites successfully!', 'success');
            },
            error: function () {
                displayMessage('Could not remove direction from favorites. Please retry later.', 'danger');
            }
        });
    }

    function search(departure, arrival) {
        let url = (departure.hasOwnProperty('lat') && arrival.hasOwnProperty('lng')) ?
            `/directions/origin/lat/${departure.lat}/lng/${departure.lng}/destination/lat/${arrival.lat}/lng/${arrival.lng}/` :
            `/directions/departure/${$('#departure').val()}/arrival/${$('#arrival').val()}/`;

        $.ajax({
            type: "GET",
            url: url,
            dataType: 'json',
            success: function (data) {
                switch (data.status) {
                    case 'OK':
                        traceDirection(data, map);

                        $.when(findFavorite()).done(function (favorite) {
                            let $btn = $('#favoriteBtn');
                            if (favorite.id > 0 && $btn.hasClass('btn-outline-primary') ||
                                favorite.id == 0 && $btn.hasClass('btn-outline-success')
                            ) toggleFavoriteButton();
                        });

                        updateInformation(data.routes[0].legs[0]);

                        if ($('#directions').find('.content').css('display') == 'none')
                            toggleDirections();

                        break;
                    case 'NOT_FOUND':
                        displayMessage("One of the locations specified in the request's origin, destination, or waypoints could not be geocoded.", 'warning');
                        break;
                    case 'ZERO_RESULTS':
                        displayMessage('No route could be found between the origin and destination.', 'info');
                        break;
                    case 'MAX_WAYPOINTS_EXCEEDED':
                        displayMessage('Too many DirectionsWaypoint fields were provided in the DirectionsRequest.', 'info');
                        break;
                    case 'INVALID_REQUEST':
                        displayMessage('The provided DirectionsRequest was invalid.', 'warning');
                        break;
                    case 'OVER_QUERY_LIMIT':
                        displayMessage('The webpage has sent too many requests within the allowed time period.', 'warning');
                        break;
                    case 'REQUEST_DENIED':
                        displayMessage('The webpage is not allowed to use the directions service.', 'warning');
                        break;
                    case 'UNKNOWN_ERROR':
                        displayMessage('A directions request could not be processed due to a server error. The request may succeed if you try again.', 'warning');
                        break;
                    default:
                        break;
                }
            },
            error: function () {
                displayMessage('Could not get the station list. Please retry later.', 'warning')
            }
        });
    }

    function getFavorites() {
        $.ajax({
            type: 'GET',
            url: "/favorites/all",
            dataType: 'json',
            success: function (data) {
                $('#favoritesTable').find('tbody tr').remove();

                data.forEach(function (favorite) {
                    let departure = {
                            "lat": favorite.departure.coordinates[1],
                            "lng": favorite.departure.coordinates[0]
                        },
                        arrival = {
                            "lat": favorite.arrival.coordinates[1],
                            "lng": favorite.arrival.coordinates[0]
                        };

                    $('#favoritesTable').find('tbody').append(`<tr><td>${favorite.startAddress}</td><td>${favorite.endAddress}</td><td><button type="button" data-departure=${JSON.stringify(departure)} data-arrival=${JSON.stringify(arrival)} class="btn btn-primary start">start</button></td></tr>`);
                });
            }

            ,
            error: function () {
                displayMessage('Could not get favorites. Please retry later.', 'danger');
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
        $('#directions').find('.header, .content').toggle('fast');
    }

    function toggleFavoriteButton() {
        let $favoriteBtn = $('#favoriteBtn'),
            text = $favoriteBtn.find('span').text();

        $favoriteBtn.toggleClass('btn-outline-primary btn-outline-success');
        $favoriteBtn.find('span').text(text == 'Added to favorites' ? 'Add to favorites' : 'Added to favorites');
        $favoriteBtn.find('i').toggleClass('fa-plus fa-check');
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
                /*position = {
                 lat: 48.870393671603765,
                 lng: 2.384222472712587
                 };*/

                let update_timeout = null;

                let pos = {"lat": position.coords.latitude, "lng": position.coords.longitude};

                map = new google.maps.Map(document.getElementById('map'), {
                    center: pos,
                    zoom: 14
                });

                map.addListener('click', function (event) {
                    update_timeout = setTimeout(function () {
                        let lat = event.latLng.lat(),
                            lng = event.latLng.lng();

                        search(pos, {lat: lat, lng: lng});
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

                positionMarker.setPosition(pos);
            });
        }
    }

    $(window).load(function () {
        let token = $("meta[name='_csrf']").attr("content"),
            header = $("meta[name='_csrf_header']").attr("content"),
            _ctx = $("meta[name='_ctx']").attr("content");

        $(document).ajaxSend(function (e, xhr) {
            xhr.setRequestHeader(header, token);
        });

        $.ajaxPrefilter(function (options) {
            if (!options.crossDomain) {
                options.url = _ctx + options.url;
            }
        });

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
        $('#favoriteBtn').on('click', function () {
            $.when(findFavorite()).done(function (favorite) {
                (favorite.id > 0) ?
                    removeDirectionFromFavorites(favorite.id) :
                    addDirectionToFavorites();
            });
        });
        $('#favoritesModal').on('shown.bs.modal', getFavorites);
        $('#favoritesTable').on('click', '.start', function (event) {
            let departure = $(event.currentTarget).data('departure'),
                arrival = $(event.currentTarget).data('arrival');

            search(departure, arrival);

            $('#favoritesModal').modal('toggle');

        });
        $('#directions').on('click', toggleDirections);
        $('#departureBtn').on('click', function () {
            $('#departure').val('');
        });
        $('#arrivalBtn').on('click', function () {
            $('#arrival').val('');
        });
    });
})
;

