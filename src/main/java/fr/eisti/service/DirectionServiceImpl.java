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
    public Direction getDirection(Point origin, Point destination) {
        String url = String.format(
                "https://maps.googleapis.com/maps/api/directions/json?origin=%.2f,%.2f&destination=%.2f,%.2f&units=metric&mode=bicycling&key=%s",
                origin.getX(),
                origin.getY(),
                destination.getX(),
                destination.getY(),
                apiKey
        );

        return restTemplate.getForObject(url, Direction.class);
    }
}
