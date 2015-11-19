package project.persistence.entities.User;


import javax.persistence.Entity;
import javax.persistence.*;

@Entity
@Table(name="user")
public class User {
    @Id
    @Column(name="username")
    @GeneratedValue
    private String username;


    private String email;

    private String password;

    public User(){}

    public User(String username, String email, String password){
        this.username = username;
        this.email = email;
        this.password = password;
    }


    public String getUsername(){
    return this.username;
    }

    public String getEmail(){
        return this.email;
    }

    public  String getPassword(){
        return this.password;
    }

    public void setUsername(String username){
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public  void setPassword(String password){
        this.password = password;
    }






}
