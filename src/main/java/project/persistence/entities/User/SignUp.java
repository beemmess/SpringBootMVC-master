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

    public String getUserName() {return userName; }

    public void setUserName(String userName) {this.userName = userName;}

    public String getEmail() { return email;}

    public void setEmail(String email) {this.email = email;}

    public void setPassword(String password) {this.password = password;}

    //@Override
    //public String toString() {
     //   return String.format(
    //            "Sign up [User Name=%s, email=%s, password=%s]",
   //             userName,email,password);
 //   }
}
