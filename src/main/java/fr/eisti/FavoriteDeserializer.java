package fr.eisti;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.GeometryFactory;
import com.vividsolutions.jts.geom.Point;
import fr.eisti.domain.Favorite;

import java.io.IOException;

/**
 * Created by ivan on 14/01/17.
 */
public class FavoriteDeserializer extends JsonDeserializer<Favorite> {
    @Override
    public Favorite deserialize(JsonParser jsonParser, DeserializationContext ctxt) throws IOException {
        JsonNode node = jsonParser.getCodec().readTree(jsonParser);

        String startAddress = node.get("startAddress").asText();
        String endAddress = node.get("endAddress").asText();

        double dx = node.get("departure").get("lng").asDouble();
        double dy = node.get("departure").get("lat").asDouble();

        double ax = node.get("arrival").get("lng").asDouble();
        double ay = node.get("arrival").get("lat").asDouble();

        Point departure = new GeometryFactory().createPoint(new Coordinate(dx, dy));
        Point arrival = new GeometryFactory().createPoint(new Coordinate(ax, ay));

        return new Favorite(startAddress, endAddress, departure, arrival);
    }
}
