package fr.eisti.repository;

import fr.eisti.domain.District;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * Created by ivan on 29/12/16.
 */
public interface DistrictRepository extends CrudRepository<District, Integer> {

    @Query(value = "SELECT * FROM District WHERE ST_within(POINT(:lat, :lng), Geometry);", nativeQuery = true)
    District findByCoordinates(@Param("lat") double lat, @Param("lng") double lng);
}
