package fr.eisti.domain;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.vividsolutions.jts.geom.Point;
import fr.eisti.StationDeserializer;

import javax.persistence.*;

/**
 * Created by ivan on 21/12/16.
 */
@Entity
@Table(name = "Station")
@JsonDeserialize(using = StationDeserializer.class)
public class Station {
    private int id;
    private int number;
    private String name;
    private String address;
    private Point location;

    public Station() {
    }

    public Station(int number, String name, String address, Point location) {
        this.number = number;
        this.name = name;
        this.address = address;
        this.location = location;
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
    @Column(name = "number", nullable = false)
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "address", nullable = false, length = 255)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "location", columnDefinition = "Point", nullable = false)
    public Point getLocation() {
        return location;
    }

    public void setLocation(Point location) {
        this.location = location;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Station station = (Station) o;

        if (id != station.id) return false;
        if (number != station.number) return false;
        if (name != null ? !name.equals(station.name) : station.name != null) return false;
        if (address != null ? !address.equals(station.address) : station.address != null) return false;
        if (location != null ? !location.equals(station.location) : station.location != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + number;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (location != null ? location.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Station{" +
                "id=" + id +
                ", number=" + number +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", location=" + location +
                '}';
    }
}
