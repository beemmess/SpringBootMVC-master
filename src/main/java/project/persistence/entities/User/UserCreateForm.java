package project.persistence.entities.User;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

public class UserCreateForm {


    @Size(min=2, max = 30)
    private String username = "";

    @Email
    private String email = "";

    @NotEmpty
    private String password = "";

    @NotEmpty
    private String passwordRepeated = "";

    public String getUsername(){
        return username;
    }

    public String getEmail(){
        return email;
    }

    public String getPassword(){
        return password;
    }

    public String getPasswordRepeated(){
        return passwordRepeated;
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

    public void setPasswordRepeated(String passwordRepeated){
        this.passwordRepeated = passwordRepeated;
    }





}
