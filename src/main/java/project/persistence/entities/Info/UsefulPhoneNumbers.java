package project.persistence.entities.Info;

import javax.persistence.*;
/**
 * Created by hlingunnlaugsdottir on 21/11/15.
 */

@Entity
@Table(name = "Usefulphonenumbers")
public class UsefulPhoneNumbers {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  long id;

    private String owner;
    private int phoneNumber;

    public UsefulPhoneNumbers() {

    }

    public UsefulPhoneNumbers(String owner, int phoneNumber){
        this.owner = owner;
        this.phoneNumber = phoneNumber;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getOwner() {return owner;}
    public void setOwner(String owner) {
        this.owner = owner;
    }

    public int getPhoneNumber() {return phoneNumber;}
    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    //This is for easier debug
    @Override
    public String toString() {
        return String.format(
                "UsefulPhoneNumbers[owner=%s, phoneNumber=%s]",
                owner, phoneNumber);
    }
}
