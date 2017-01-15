package fr.eisti.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.vividsolutions.jts.geom.Point;
import fr.eisti.FavoriteDeserializer;

import javax.persistence.*;

/**
 * Created by ivan on 13/01/17.
 */
@Entity
@Table(name = "Favorite")
@JsonDeserialize(using = FavoriteDeserializer.class)
public class Favorite {
    private int id;
    private String startAddress;
    private String endAddress;
    private User user;
    private Point departure;
    private Point arrival;

    public Favorite() {

    }

    public Favorite(String startAddress, String endAddress, Point departure, Point arrival) {
        this.startAddress = startAddress;
        this.endAddress = endAddress;
        this.departure = departure;
        this.arrival = arrival;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "start_address", nullable = false)
    public String getStartAddress() {
        return startAddress;
    }

    public void setStartAddress(String startAddress) {
        this.startAddress = startAddress;
    }

    @Basic
    @Column(name = "end_address", nullable = false)
    public String getEndAddress() {
        return endAddress;
    }

    public void setEndAddress(String endAddress) {
        this.endAddress = endAddress;
    }

    @Basic
    @Column(name = "departure", nullable = false)
    public Point getDeparture() {
        return departure;
    }

    public void setDeparture(Point departure) {
        this.departure = departure;
    }

    @Basic
    @Column(name = "arrival", nullable = false)
    public Point getArrival() {
        return arrival;
    }

    public void setArrival(Point arrival) {
        this.arrival = arrival;
    }

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Favorite favorite = (Favorite) o;

        if (id != favorite.id) return false;
        if (departure != null ? !departure.equals(favorite.departure) : favorite.departure != null) return false;
        if (arrival != null ? !arrival.equals(favorite.arrival) : favorite.arrival != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (departure != null ? departure.hashCode() : 0);
        result = 31 * result + (arrival != null ? arrival.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Favorite{" +
                "id=" + id +
                ", departure=" + departure +
                ", arrival=" + arrival +
                '}';
    }
}
