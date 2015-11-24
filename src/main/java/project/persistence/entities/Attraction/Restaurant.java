package project.persistence.entities.Attraction;


public class Restaurant extends Attraction {

    private String restaurantType;

    public Restaurant(String restaurantType, String type, String name, double lat, double lng){
        super(type, name, lat, lng);
        this.restaurantType = restaurantType;

    }

    public String getRestaurantType(){
        return restaurantType;
    }

    public void setRestaurantType(String restaurantType){
        this.restaurantType = restaurantType;
    }



}
