package fr.eisti.repository;

import fr.eisti.domain.County;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * Created by ivan on 29/12/16.
 */
public interface CountyRepository extends CrudRepository<County, Integer> {

    @Query(value = "SELECT * FROM County WHERE ST_within(POINT(:lat, :lng), geom);", nativeQuery = true)
    County findByCoordinates(@Param("lat") double lat, @Param("lng") double lng);
}
