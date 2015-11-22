package project.persistence.entities.User;


import org.hibernate.validator.constraints.Email;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
@Table(name = "userinfo")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    private String username;

    private String email;
    private String password;

    @Transient
    private List<GrantedAuthority> authorities;

    public User(){

    }

    public User(String username, String email, String password){
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername(){
    return username;
    }

    public String getEmail(){
        return email;
    }

    public  String getPassword(){
        return password;
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


    public List<GrantedAuthority> getAuthorities(){
        return authorities;
    }

    public void setAuthorities(List<GrantedAuthority> authorities){
        this.authorities = authorities;
    }


    @Override
    public String toString() {
        return String.format(
                "User[username=%s, email=%s, password=%s]",
                username,email,password);
    }



}
