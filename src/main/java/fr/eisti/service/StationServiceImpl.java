package fr.eisti.service;

import fr.eisti.domain.Station;
import fr.eisti.domain.StationRealTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivan on 31/12/16.
 */
@Service
public class StationServiceImpl implements StationService {

    @Autowired
    private RestTemplate restTemplate;

    private static final String apiKey = "85871bc0de9ac4eef048c1d768fe08909b3432d7";

    @Override
    public List<Station> getStationList() {
        String url = String.format("https://api.jcdecaux.com/vls/v1/stations?contract=Paris&apiKey=%s", apiKey);
        ResponseEntity<Station[]> responseEntity = restTemplate.getForEntity(url, Station[].class);
        Station[] stations = responseEntity.getBody();

        return Arrays.asList(stations);
    }

    @Override
    public List<Station> getStationListByContract(String contract) {
        String url = String.format(
                "https://api.jcdecaux.com/vls/v1/stations?contract=%s&apiKey=%s",
                contract,
                apiKey
        );
        ResponseEntity<Station[]> responseEntity = restTemplate.getForEntity(url, Station[].class);
        Station[] stations = responseEntity.getBody();

        return Arrays.asList(stations);
    }

    @Override
    public StationRealTime getStationInformation(String contractName, int stationNumber) {
        String url = String.format(
                "https://api.jcdecaux.com/vls/v1/stations/%2d?contract=%s&apiKey=%s",
                stationNumber,
                contractName,
                apiKey
        );

        return restTemplate.getForObject(url, StationRealTime.class);

    }
}
