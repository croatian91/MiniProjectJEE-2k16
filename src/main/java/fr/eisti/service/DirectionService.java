package fr.eisti.service;

import com.vividsolutions.jts.geom.Point;
import fr.eisti.domain.Direction;
import org.springframework.stereotype.Service;

/**
 * Created by ivan on 31/12/16.
 */
@Service
public interface DirectionService {

    Direction getDirectionByLatLng(Point origin, Point destination);

    Direction getDirectionByAddress(String departure, String arrival);
}
