package project.persistence.entities.User;

import com.sun.org.apache.xpath.internal.operations.Bool;
import project.persistence.entities.User.User.Role;

import org.springframework.security.core.authority.AuthorityUtils;

import java.util.Collection;

public class CurrentUser extends org.springframework.security.core.userdetails.User {
   private  User user;


    public CurrentUser(User user){
        super(user.getUsername(), user.getPassword(), AuthorityUtils.createAuthorityList(user.getRole().toString()));
        this.user = user;
    }


    public User getUser(){
        return user;
    }

    public Long getId(){
        return user.getId();
    }

    public Role getRole() {
        return user.getRole();
    }

    public String getUsername(){return user.getUsername();}



    @Override
    public String toString() {
        return "CurrentUser{" +
                "user=" + user +
                "} " + super.toString();
    }
}
