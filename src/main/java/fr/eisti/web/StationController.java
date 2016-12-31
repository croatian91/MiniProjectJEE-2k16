package fr.eisti.web;

import fr.eisti.domain.County;
import fr.eisti.domain.District;
import fr.eisti.domain.StationRealTime;
import fr.eisti.repository.CountyRepository;
import fr.eisti.repository.DistrictRepository;
import fr.eisti.repository.StationRepository;
import fr.eisti.service.StationServiceImpl;
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

    @Autowired
    private CountyRepository countyRepository;

    @Autowired
    private DistrictRepository districtRepository;

    @Autowired
    private StationServiceImpl stationService;

    @RequestMapping("/stations/all")
    public Iterable List() {
        return stationRepository.findAll();
    }

    @RequestMapping("/stations/county/{county}")
    public Iterable ListByCounty(@PathVariable("county") int county) {
        return stationRepository.findByCounty(county);
    }

    @RequestMapping("/stations/county/lat/{lat}/lng/{lng}/")
    public Iterable ListByCounty(@PathVariable("lat") double lat, @PathVariable("lng") double lng) {
        County county = countyRepository.findByCoordinates(lat, lng);

        return county != null ? stationRepository.findByCounty(county.getCodeDept()) : null;
    }

    @RequestMapping("/stations/district/{district}")
    public Iterable ListByDistrict(@PathVariable("district") int district) {
        return stationRepository.findByDistrict(district);
    }

    @RequestMapping("/stations/district/lat/{lat}/lng/{lng}/")
    public Iterable ListByDistrict(@PathVariable("lat") double lat, @PathVariable("lng") double lng) {
        District district = districtRepository.findByCoordinates(lat, lng);

        return district != null ? stationRepository.findByDistrict(district.getcAr()) : null;
    }

    @RequestMapping("/stations/station/{station_number}")
    public StationRealTime getInformation(@PathVariable("station_number") int stationNumber) {
        return stationService.getStationInformation("Paris", stationNumber);
    }
}
