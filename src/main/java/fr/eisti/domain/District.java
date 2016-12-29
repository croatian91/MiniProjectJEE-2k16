package fr.eisti.domain;

import com.vividsolutions.jts.geom.Point;
import com.vividsolutions.jts.geom.Polygon;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * Created by ivan on 29/12/16.
 */
@Entity
@Table(name = "District")
public class District {
    private Integer id;
    private Integer nSqAr;
    private Integer cAr;
    private String cArinsee;
    private String lAr;
    private String lAroff;
    private Integer nSqCo;
    private BigDecimal surface;
    private BigDecimal perimetre;
    private Point geometryXY;
    private Polygon geometry;
    private Integer objectid;
    private BigDecimal longueur;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "N_SQ_AR", nullable = true)
    public Integer getnSqAr() {
        return nSqAr;
    }

    public void setnSqAr(Integer nSqAr) {
        this.nSqAr = nSqAr;
    }

    @Basic
    @Column(name = "C_AR", nullable = true)
    public Integer getcAr() {
        return cAr;
    }

    public void setcAr(Integer cAr) {
        this.cAr = cAr;
    }

    @Basic
    @Column(name = "C_ARINSEE", nullable = true, length = 5)
    public String getcArinsee() {
        return cArinsee;
    }

    public void setcArinsee(String cArinsee) {
        this.cArinsee = cArinsee;
    }

    @Basic
    @Column(name = "L_AR", nullable = true, length = 10)
    public String getlAr() {
        return lAr;
    }

    public void setlAr(String lAr) {
        this.lAr = lAr;
    }

    @Basic
    @Column(name = "L_AROFF", nullable = true, length = 19)
    public String getlAroff() {
        return lAroff;
    }

    public void setlAroff(String lAroff) {
        this.lAroff = lAroff;
    }

    @Basic
    @Column(name = "N_SQ_CO", nullable = true)
    public Integer getnSqCo() {
        return nSqCo;
    }

    public void setnSqCo(Integer nSqCo) {
        this.nSqCo = nSqCo;
    }

    @Basic
    @Column(name = "SURFACE", nullable = true, precision = 8)
    public BigDecimal getSurface() {
        return surface;
    }

    public void setSurface(BigDecimal surface) {
        this.surface = surface;
    }

    @Basic
    @Column(name = "PERIMETRE", nullable = true, precision = 8)
    public BigDecimal getPerimetre() {
        return perimetre;
    }

    public void setPerimetre(BigDecimal perimetre) {
        this.perimetre = perimetre;
    }

    @Basic
    @Column(name = "Geometry_X_Y", nullable = false)
    public Point getGeometryXY() {
        return geometryXY;
    }

    public void setGeometryXY(Point geometryXY) {
        this.geometryXY = geometryXY;
    }

    @Basic
    @Column(name = "Geometry", nullable = false)
    public Polygon getGeometry() {
        return geometry;
    }

    public void setGeometry(Polygon geometry) {
        this.geometry = geometry;
    }

    @Basic
    @Column(name = "OBJECTID", nullable = true)
    public Integer getObjectid() {
        return objectid;
    }

    public void setObjectid(Integer objectid) {
        this.objectid = objectid;
    }

    @Basic
    @Column(name = "LONGUEUR", nullable = true, precision = 8)
    public BigDecimal getLongueur() {
        return longueur;
    }

    public void setLongueur(BigDecimal longueur) {
        this.longueur = longueur;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        District district = (District) o;

        if (id != null ? !id.equals(district.id) : district.id != null) return false;
        if (nSqAr != null ? !nSqAr.equals(district.nSqAr) : district.nSqAr != null) return false;
        if (cAr != null ? !cAr.equals(district.cAr) : district.cAr != null) return false;
        if (cArinsee != null ? !cArinsee.equals(district.cArinsee) : district.cArinsee != null) return false;
        if (lAr != null ? !lAr.equals(district.lAr) : district.lAr != null) return false;
        if (lAroff != null ? !lAroff.equals(district.lAroff) : district.lAroff != null) return false;
        if (nSqCo != null ? !nSqCo.equals(district.nSqCo) : district.nSqCo != null) return false;
        if (surface != null ? !surface.equals(district.surface) : district.surface != null) return false;
        if (perimetre != null ? !perimetre.equals(district.perimetre) : district.perimetre != null) return false;
        if (geometryXY != null ? !geometryXY.equals(district.geometryXY) : district.geometryXY != null) return false;
        if (geometry != null ? !geometry.equals(district.geometry) : district.geometry != null) return false;
        if (objectid != null ? !objectid.equals(district.objectid) : district.objectid != null) return false;
        if (longueur != null ? !longueur.equals(district.longueur) : district.longueur != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (nSqAr != null ? nSqAr.hashCode() : 0);
        result = 31 * result + (cAr != null ? cAr.hashCode() : 0);
        result = 31 * result + (cArinsee != null ? cArinsee.hashCode() : 0);
        result = 31 * result + (lAr != null ? lAr.hashCode() : 0);
        result = 31 * result + (lAroff != null ? lAroff.hashCode() : 0);
        result = 31 * result + (nSqCo != null ? nSqCo.hashCode() : 0);
        result = 31 * result + (surface != null ? surface.hashCode() : 0);
        result = 31 * result + (perimetre != null ? perimetre.hashCode() : 0);
        result = 31 * result + (geometryXY != null ? geometryXY.hashCode() : 0);
        result = 31 * result + (geometry != null ? geometry.hashCode() : 0);
        result = 31 * result + (objectid != null ? objectid.hashCode() : 0);
        result = 31 * result + (longueur != null ? longueur.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "District{" +
                "id=" + id +
                ", nSqAr=" + nSqAr +
                ", cAr=" + cAr +
                ", cArinsee='" + cArinsee + '\'' +
                ", lAr='" + lAr + '\'' +
                ", lAroff='" + lAroff + '\'' +
                ", nSqCo=" + nSqCo +
                ", surface=" + surface +
                ", perimetre=" + perimetre +
                ", geometryXY=" + geometryXY +
                ", geometry=" + geometry +
                ", objectid=" + objectid +
                ", longueur=" + longueur +
                '}';
    }
}
