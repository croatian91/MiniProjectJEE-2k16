package fr.eisti.web;

import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.GeometryFactory;
import com.vividsolutions.jts.geom.Point;
import fr.eisti.domain.Direction;
import fr.eisti.service.DirectionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by ivan on 31/12/16.
 */
@RestController
public class DirectionController {

    @Autowired
    private DirectionServiceImpl directionService;

    @RequestMapping("directions/origin/lat/{origLat}/lng/{origLng}/destination/lat/{destLat}/lng/{destLng}/")
    Direction getDirection(
            @PathVariable("origLat") double origLat,
            @PathVariable("origLng") double origLng,
            @PathVariable("destLat") double destLat,
            @PathVariable("destLng") double destLng
    ) {
        GeometryFactory geometryFactory = new GeometryFactory();
        Point origin = geometryFactory.createPoint(new Coordinate(origLat, origLng));
        Point destination = geometryFactory.createPoint(new Coordinate(destLat, destLng));

        return directionService.getDirection(origin, destination);
    }
}
