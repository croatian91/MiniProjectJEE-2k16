package fr.eisti.domain;

import com.vividsolutions.jts.geom.Point;
import com.vividsolutions.jts.geom.Polygon;

import javax.persistence.*;

/**
 * Created by ivan on 29/12/16.
 */
@Entity
@Table(name = "County")
public class County {
    private Integer id;
    private Point geomXY;
    private Polygon geom;
    private Integer idGeofla;
    private Integer codeDept;
    private String nomDept;
    private Integer codeChf;
    private String nomChf;
    private Integer xChfLieu;
    private Integer yChfLieu;
    private Integer xCentroid;
    private Integer yCentroid;
    private Integer codeReg;
    private String nomRegion;

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
    @Column(name = "geom_x_y", nullable = false)
    public Point getGeomXY() {
        return geomXY;
    }

    public void setGeomXY(Point geomXY) {
        this.geomXY = geomXY;
    }

    @Basic
    @Column(name = "geom", nullable = false)
    public Polygon getGeom() {
        return geom;
    }

    public void setGeom(Polygon geom) {
        this.geom = geom;
    }

    @Basic
    @Column(name = "id_geofla", nullable = true)
    public Integer getIdGeofla() {
        return idGeofla;
    }

    public void setIdGeofla(Integer idGeofla) {
        this.idGeofla = idGeofla;
    }

    @Basic
    @Column(name = "code_dept", nullable = true)
    public Integer getCodeDept() {
        return codeDept;
    }

    public void setCodeDept(Integer codeDept) {
        this.codeDept = codeDept;
    }

    @Basic
    @Column(name = "nom_dept", nullable = true, length = 17)
    public String getNomDept() {
        return nomDept;
    }

    public void setNomDept(String nomDept) {
        this.nomDept = nomDept;
    }

    @Basic
    @Column(name = "code_chf", nullable = true)
    public Integer getCodeChf() {
        return codeChf;
    }

    public void setCodeChf(Integer codeChf) {
        this.codeChf = codeChf;
    }

    @Basic
    @Column(name = "nom_chf", nullable = true, length = 24)
    public String getNomChf() {
        return nomChf;
    }

    public void setNomChf(String nomChf) {
        this.nomChf = nomChf;
    }

    @Basic
    @Column(name = "x_chf_lieu", nullable = true)
    public Integer getxChfLieu() {
        return xChfLieu;
    }

    public void setxChfLieu(Integer xChfLieu) {
        this.xChfLieu = xChfLieu;
    }

    @Basic
    @Column(name = "y_chf_lieu", nullable = true)
    public Integer getyChfLieu() {
        return yChfLieu;
    }

    public void setyChfLieu(Integer yChfLieu) {
        this.yChfLieu = yChfLieu;
    }

    @Basic
    @Column(name = "x_centroid", nullable = true)
    public Integer getxCentroid() {
        return xCentroid;
    }

    public void setxCentroid(Integer xCentroid) {
        this.xCentroid = xCentroid;
    }

    @Basic
    @Column(name = "y_centroid", nullable = true)
    public Integer getyCentroid() {
        return yCentroid;
    }

    public void setyCentroid(Integer yCentroid) {
        this.yCentroid = yCentroid;
    }

    @Basic
    @Column(name = "code_reg", nullable = true)
    public Integer getCodeReg() {
        return codeReg;
    }

    public void setCodeReg(Integer codeReg) {
        this.codeReg = codeReg;
    }

    @Basic
    @Column(name = "nom_region", nullable = true, length = 13)
    public String getNomRegion() {
        return nomRegion;
    }

    public void setNomRegion(String nomRegion) {
        this.nomRegion = nomRegion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        County county = (County) o;

        if (id != null ? !id.equals(county.id) : county.id != null) return false;
        if (geomXY != null ? !geomXY.equals(county.geomXY) : county.geomXY != null) return false;
        if (geom != null ? !geom.equals(county.geom) : county.geom != null) return false;
        if (idGeofla != null ? !idGeofla.equals(county.idGeofla) : county.idGeofla != null) return false;
        if (codeDept != null ? !codeDept.equals(county.codeDept) : county.codeDept != null) return false;
        if (nomDept != null ? !nomDept.equals(county.nomDept) : county.nomDept != null) return false;
        if (codeChf != null ? !codeChf.equals(county.codeChf) : county.codeChf != null) return false;
        if (nomChf != null ? !nomChf.equals(county.nomChf) : county.nomChf != null) return false;
        if (xChfLieu != null ? !xChfLieu.equals(county.xChfLieu) : county.xChfLieu != null) return false;
        if (yChfLieu != null ? !yChfLieu.equals(county.yChfLieu) : county.yChfLieu != null) return false;
        if (xCentroid != null ? !xCentroid.equals(county.xCentroid) : county.xCentroid != null) return false;
        if (yCentroid != null ? !yCentroid.equals(county.yCentroid) : county.yCentroid != null) return false;
        if (codeReg != null ? !codeReg.equals(county.codeReg) : county.codeReg != null) return false;
        if (nomRegion != null ? !nomRegion.equals(county.nomRegion) : county.nomRegion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (geomXY != null ? geomXY.hashCode() : 0);
        result = 31 * result + (geom != null ? geom.hashCode() : 0);
        result = 31 * result + (idGeofla != null ? idGeofla.hashCode() : 0);
        result = 31 * result + (codeDept != null ? codeDept.hashCode() : 0);
        result = 31 * result + (nomDept != null ? nomDept.hashCode() : 0);
        result = 31 * result + (codeChf != null ? codeChf.hashCode() : 0);
        result = 31 * result + (nomChf != null ? nomChf.hashCode() : 0);
        result = 31 * result + (xChfLieu != null ? xChfLieu.hashCode() : 0);
        result = 31 * result + (yChfLieu != null ? yChfLieu.hashCode() : 0);
        result = 31 * result + (xCentroid != null ? xCentroid.hashCode() : 0);
        result = 31 * result + (yCentroid != null ? yCentroid.hashCode() : 0);
        result = 31 * result + (codeReg != null ? codeReg.hashCode() : 0);
        result = 31 * result + (nomRegion != null ? nomRegion.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "County{" +
                "id=" + id +
                ", geomXY=" + geomXY +
                ", geom=" + geom +
                ", idGeofla=" + idGeofla +
                ", codeDept=" + codeDept +
                ", nomDept='" + nomDept + '\'' +
                ", codeChf=" + codeChf +
                ", nomChf='" + nomChf + '\'' +
                ", xChfLieu=" + xChfLieu +
                ", yChfLieu=" + yChfLieu +
                ", xCentroid=" + xCentroid +
                ", yCentroid=" + yCentroid +
                ", codeReg=" + codeReg +
                ", nomRegion='" + nomRegion + '\'' +
                '}';
    }
}
