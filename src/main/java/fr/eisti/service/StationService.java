package fr.eisti.service;

import fr.eisti.domain.Station;
import fr.eisti.domain.StationRealTime;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ivan on 31/12/16.
 */
@Service
public interface StationService {

    List<Station> getStationList();

    List<Station> getStationListByContract(String contract);

    StationRealTime getStationInformation(String contractName, int stationNumber);
}
