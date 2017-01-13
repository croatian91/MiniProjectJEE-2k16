package fr.eisti.service;

import com.vividsolutions.jts.geom.Point;
import fr.eisti.domain.Direction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 * Created by ivan on 31/12/16.
 */
@Service
public class DirectionServiceImpl implements DirectionService {

    @Autowired
    private RestTemplate restTemplate;

    private static final String apiKey = "AIzaSyC4yvBrfQ4S6pHc3itNV-X4jIbTPflXRiU";

    @Override
    public Direction getDirectionByLatLng(Point origin, Point destination) {
        String url = String.format(
                "https://maps.googleapis.com/maps/api/directions/json?origin=%.20f,%.20f&destination=%.20f,%.20f&units=metric&mode=bicycling&key=%s",
                origin.getX(),
                origin.getY(),
                destination.getX(),
                destination.getY(),
                apiKey
        );

        return restTemplate.getForObject(url, Direction.class);
    }

    @Override
    public Direction getDirectionByAddress(String departure, String arrival) {
        String url = String.format(
                "https://maps.googleapis.com/maps/api/directions/json?origin=%s&destination=%s&units=metric&mode=bicycling&key=%s",
                departure,
                arrival,
                apiKey
        );

        return restTemplate.getForObject(url, Direction.class);
    }
}
