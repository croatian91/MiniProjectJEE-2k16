package fr.eisti.repository;

import fr.eisti.domain.Station;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by ivan on 21/12/16.
 */
@Repository
public interface StationRepository extends CrudRepository<Station, Integer> {
}
