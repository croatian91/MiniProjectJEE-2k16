package fr.eisti.repository;

import com.vividsolutions.jts.geom.Point;
import fr.eisti.domain.Favorite;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by ivan on 13/01/17.
 */
public interface FavoriteRepository extends CrudRepository<Favorite, Integer> {
    Favorite findByDepartureAndArrivalAndUserId(Point departure, Point arrival, int userId);
}
