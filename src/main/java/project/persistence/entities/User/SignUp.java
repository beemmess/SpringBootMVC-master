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
    private Long id;

    private String username;
    private String email;
    //private String password;

    public SignUp() {
    }

    public SignUp(String username, String email) {
        this.username = username;
        this.email = email;
        //this.password = password;
    }

    public Long getId() {
        return this.id;
    }
    public String getUsername() {
        return this.username;
    }
    public String getEmail() {
        return this.email;
    }

    /*
<<<<<<< HEAD
    public void setUsername(String username) { this.username = username;
=======
    public void setUsername() {
        this.username = username;
>>>>>>> CurrencyConverter
    }
    */

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return String.format(
                "SignUp[username=%s, email=%s]",
                username,email);
    }

}
