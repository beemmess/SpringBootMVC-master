package project.persistence.entities.User;

import project.persistence.entities.User.User.Role;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class UserCreateForm {


    @Size(min=2, max = 30)
    @NotEmpty
    private String username = "";

    @Email
    @NotEmpty
    private String email = "";

    @NotEmpty
    private String password = "";

    @NotEmpty
    private String passwordRepeated = "";

    @NotNull
    private Role role = Role.USER;

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

    public Role getRole() {return role;}

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

    public void setRole(Role role) { this.role = role;}



    @Override
    public String toString() {
        return "UserCreateForm{" +
                "email='" + email.replaceFirst("@.+", "@***") + '\'' +
                ", password=***" + '\'' +
                ", passwordRepeated=***" + '\'' +
                ", role=" + role +
                '}';
    }




}
