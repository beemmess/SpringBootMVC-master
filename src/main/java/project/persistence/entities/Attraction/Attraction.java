package project.persistence.entities.Attraction;

import project.persistence.entities.Map.StreetMap;


public class Attraction extends StreetMap{

    private String type;
    private String name;
    private AllReviews[] allReviews;

    public Attraction(String type, String name, AllReviews[] allReviews, double lat, double lng) {
        super(lat, lng);
        this.type = type;
        this.name = name;
        this.allReviews = allReviews;
    }

    public String getType(){
        return type;
    }

    public String getName(){
        return name;
    }

    public AllReviews[] getAllReviews() {
        return allReviews;
    }

    public void setType(String type){
        this.type=type;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAllReviews(AllReviews[] allReviews){
        this.allReviews = allReviews;
    }
}
