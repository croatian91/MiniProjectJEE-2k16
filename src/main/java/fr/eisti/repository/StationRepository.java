package fr.eisti.repository;

import fr.eisti.domain.Station;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ivan on 21/12/16.
 */
@Repository
public interface StationRepository extends CrudRepository<Station, Integer> {

    @Query(value = "SELECT * FROM Station WHERE st_contains((SELECT Geometry FROM District WHERE C_AR=:district), Location);", nativeQuery = true)
    List<Station> findByDistrict(@Param("district") int district);

    @Query(value = "SELECT * FROM Station WHERE st_contains((SELECT geom FROM County WHERE code_dept=:county), Location);", nativeQuery = true)
    List<Station> findByCounty(@Param("county") int county);

    @Query(value = "SELECT * FROM Station WHERE MBRContains(LineString(Point(:lng + :distance / (111.1 / COS(RADIANS(:lat))), :lat + :distance / 111.1), Point(:lng - :distance / (111.1 / COS(RADIANS(:lat))), :lat - :distance / 111.1)), Location)", nativeQuery = true)
    List<Station> findByDistance(@Param("lat") double lat, @Param("lng") double lng, @Param("distance") double distance);

    Station findByNumber(int number);
}
