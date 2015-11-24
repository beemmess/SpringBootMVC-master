package project.persistence.entities.Attraction;


public class Hotel extends Attraction{
    private int star;

    public Hotel(int star, String type, String name, AllReviews[] allReviews, double lat, double lng){
        super(type, name, allReviews, lat, lng);
        this.star = star;
    }

    public int getStar(){
        return star;
    }

    public void setStar(int star){
        this.star=star;
    }
}
