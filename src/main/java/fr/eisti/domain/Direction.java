package fr.eisti.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Created by ivan on 31/12/16.
 */
public class Direction {
    @JsonProperty("status")
    private String status;
    @JsonProperty("geocoded_waypoints")
    private Object geocoded_waypoints;
    @JsonProperty("routes")
    private Object[] routes;
}
