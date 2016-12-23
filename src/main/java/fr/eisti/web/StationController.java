package fr.eisti.web;

import fr.eisti.repository.StationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by ivan on 21/12/16.
 */
@RestController
public class StationController {

    @Autowired
    private StationRepository stationRepository;

    @RequestMapping("/stations/all")
    public Iterable List() {
        return stationRepository.findAll();
    }

    @RequestMapping("/stations/district/{district}")
    public Iterable ListByDistrict(@PathVariable("district") int district) {
        return stationRepository.findByDistrict(district);
    }
}
