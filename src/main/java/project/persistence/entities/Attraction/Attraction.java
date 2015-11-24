package project.persistence.entities.Attraction;

import project.persistence.entities.Map.StreetMap;


public class Attraction extends StreetMap{

    private String type;
    private String name;

    public Attraction(String type, String name, double lat, double lng) {
        super(lat, lng);
        this.type = type;
        this.name = name;
    }

    public String getType(){
        return type;
    }

    public String getName(){
        return name;
    }

    public void setType(String type){
        this.type=type;
    }

    public void setName(String name) {
        this.name = name;
    }
}
