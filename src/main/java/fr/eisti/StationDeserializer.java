package fr.eisti;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.GeometryFactory;
import com.vividsolutions.jts.geom.Point;
import fr.eisti.domain.Station;

import java.io.IOException;

/**
 * Resolve compatibility issues with com.vividsolutions.jts.geom.Point
 */
public class StationDeserializer extends JsonDeserializer<Station> {
    @Override
    public Station deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonNode node = jsonParser.getCodec().readTree(jsonParser);

        int number = node.get("number").asInt();
        String name = node.get("name").asText();
        String address = node.get("address").asText();
        double x = node.get("position").get("lng").asDouble();
        double y = node.get("position").get("lat").asDouble();
        Point location = new GeometryFactory().createPoint(new Coordinate(x, y));

        return new Station(number, name, address, location);
    }
}
