package project.persistence.entities.User;

import javax.persistence.*;

/**
 * Created by Hrafnhildur on 10/28/2015.
 */
@Entity
@Table(name = "signUp")
public class SignUp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String userName;
    private String email;
    private String password;

    public SignUp() {
    }

    public SignUp(String userName, String email, String password) {
        this.userName = userName;
        this.email = email;
        this.password = password;
    }

    



}
