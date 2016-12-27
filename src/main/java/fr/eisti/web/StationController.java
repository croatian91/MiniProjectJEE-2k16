package fr.eisti.web;

import fr.eisti.domain.StationRealTime;
import fr.eisti.repository.StationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

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

    @RequestMapping("/stations/county/{county}")
    public Iterable ListByCounty(@PathVariable("county") int county) {
        return stationRepository.findByCounty(county);
    }

    @RequestMapping("/stations/district/{district}")
    public Iterable ListByDistrict(@PathVariable("district") int district) {
        return stationRepository.findByDistrict(district);
    }

    @RequestMapping("/stations/station/{station_number}")
    public StationRealTime getInformation(@PathVariable("station_number") int stationNumber) {
        RestTemplate restTemplate = new RestTemplate();
        return restTemplate.getForObject("https://api.jcdecaux.com/vls/v1/stations/" + stationNumber + "?contract=Paris&apiKey=85871bc0de9ac4eef048c1d768fe08909b3432d7", StationRealTime.class);
    }
}
