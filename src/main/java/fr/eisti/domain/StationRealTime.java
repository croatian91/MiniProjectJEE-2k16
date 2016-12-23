package fr.eisti.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Created by ivan on 23/12/16.
 */
public class StationRealTime {

    @JsonProperty("banking")
    private boolean banking;
    @JsonProperty("bonus")
    private boolean bonus;
    @JsonProperty("status")
    private String status;
    @JsonProperty("contract_name")
    private String contractName;
    @JsonProperty("bike_stands")
    private int bikeStands;
    @JsonProperty("available_bike_stands")
    private int availableBikeStands;
    @JsonProperty("available_bikes")
    private int availableBikes;
}
