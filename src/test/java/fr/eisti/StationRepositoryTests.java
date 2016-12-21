package fr.eisti;

import fr.eisti.repositories.StationRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertEquals;

/**
 * Created by ivan on 21/12/16.
 */
@RunWith(SpringRunner.class)
@DataJpaTest
public class StationRepositoryTests {

    @Autowired
    private StationRepository stationRepository;

    @Test
    public void count() {
        assertEquals("Did not get all stations", 2, stationRepository.count());
    }
}
