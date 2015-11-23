package project.persistence.entities.User;



import javax.persistence.*;

@Entity
@Table(name = "userinfo")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", nullable = false, updatable = false)
    private Long id;

    @Column(name = "username", nullable = false, unique = true)
    private String username;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "password", nullable = false)
    private String password;


    @Column(name = "role", nullable = false)
    @Enumerated(EnumType.STRING)
    private Role role;

/*
    public User(){

    }

    public User(String username, String email, String password){
        this.username = username;
        this.email = email;
        this.password = password;
    }
*/
    public enum Role {
        USER, ADMIN;
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



    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email.replaceFirst("@.*", "@***") +
                ", password='" + password.substring(0, 10) +
                ", role=" + role +
                '}';
    }


}
