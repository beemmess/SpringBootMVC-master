package project.persistence.entities.Map;

public class StreetMap {

    private double lat;
    private double lng;


    public StreetMap(double lat, double lng){
        this.lat = lat;
        this.lng = lng;
    }


    public double getLat(){
        return lat;
    }
    public double getLng(){
        return lng;
    }
    
    public void setLat(double lat){
        this.lat = lat;
    }

    public void setLng(double lng){
        this.lng = lng;
    }

}
