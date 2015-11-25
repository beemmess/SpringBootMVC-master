package project.persistence.entities.Attraction;


import javax.persistence.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


@Entity
@Table(name = "allreviews")
public class AllReviews {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;
    private String review;
    private Date date;

    private String restaurant;

    //private Attraction attraction;

    public AllReviews() {
        this.date = new Date();
    }

    public AllReviews(String username, String review, Date date, String restaurant) {
        this.username = username;
        this.review = review;
        this.date = date;
        this.restaurant = restaurant;
        //this.attraction = attraction;
    }

    public Long getId() {

        return this.id;
    }

    public String getUsername() {

        return this.username;
    }

    public String getReview() {

        return this.review;
    }

    public Date getDate() {

        return this.date;
    }

    public String getRestaurant(){
        return this.restaurant;
    }

    /*
    public void getAttraction() {
        return this.attracion;
    }
    */

    public void setId(Long id){
        this.id = id;
    }

    public void setUsername(String username) {

        this.username = username;
    }

    public void setReview(String review) {

        this.review = review;
    }
    public void setDate(Date date) {
        this.date = date;
    }


    public void setRestaurant(String restaurant) {this.restaurant = restaurant;}

    /*
    public void setAttraction(Attraction attraction){
        this.attraction = attraction;
    }
    */

    @Override
    public String toString() {
        return String.format(
                "AllReviews[date=‰s, username=%s, review=%s, restaurant=%s]",
                date, username, review, restaurant);
    }

}


