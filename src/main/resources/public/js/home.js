function initMap() {
    var map;
    var markers = [];

    $(document).ready(function () {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 48.86397965515107, lng: 2.335599603893845},
            zoom: 14
        });
        // Try HTML5 geolocation.
//        if (navigator.geolocation) {
//            navigator.geolocation.getCurrentPosition(function (position) {
//                var pos = {
//                    lat: position.coords.latitude,
//                    lng: position.coords.longitude
//                };
//                map.setCenter(pos);
//            });
//        }

        $.ajax({
            type: "GET",
            url: "/stations/district/1",
            dataType: 'json',
            success: function (data) {
                markers.forEach(function (marker) {
                    marker.setMap(null);
                });
                markers = [];

                data.forEach(function (place) {
                    var info = new google.maps.InfoWindow(),
                        icon = {
                            url: "/images/velib-marker.png",
                            scaledSize: new google.maps.Size(38, 38),
                            origin: new google.maps.Point(0, 0),
                            anchor: new google.maps.Point(0, 0)
                        },
                        marker = new google.maps.Marker({
                            map: map,
                            title: place.name,
                            icon: icon,
                            position: new google.maps.LatLng(parseFloat(place.location.coordinates[1]), parseFloat(place.location.coordinates[0]))
                        });

                    marker.number = place.number;

                    marker.addListener('click', function () {
                        $.ajax({
                            type: "GET",
                            url: "/stations/station/" + marker.number,
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

                                info.open(map, marker);
                            },
                            error: function (response) {
                                console.log(response);
                            }
                        });
                    });

                    markers.push(marker);
                });
            },
            error: function (response) {
                console.log(response);
            }
        });
    });
}
