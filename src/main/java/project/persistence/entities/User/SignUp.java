package project.persistence.entities.User;

import javax.persistence.*;

/**
 * Created by Hrafnhildur on 10/28/2015.
 */
@Entity
@Table(name = "signup")
public class SignUp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String userName;
    private String email;
    //private String password;

    public SignUp() {
    }

    public SignUp(String userName, String email) {
        this.userName = userName;
        this.email = email;
        //this.password = password;
    }

    public Integer getId() {
        return this.id;
    }
    public String getUserName() {
        return this.userName;
    }
    public String getEmail() {
        return this.email;
    }

    public void setUserName() {
        this.userName = userName;
    }

    public void setEmail() {
        this.email = email;
    }

    @Override
    public String toString() {
        return String.format(
                "SignUp[username=%s, email=%s]",
                userName,email);
    }

}
