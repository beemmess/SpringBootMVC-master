package project.persistence.entities.User;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

import java.util.Collection;

/**
 * Created by hrabby on 22.11.2015.
 */
public class CurrentUser extends org.springframework.security.core.userdetails.User {
   private  User user;




    public CurrentUser(User user){
        super(user.getUsername(), user.getPassword(), user.getAuthorities());
        this.user = user;
    }


    public User getUser(){
        return user;
    }

    public Long getId(){
        return user.getId();
    }

    @Override
    public String toString() {
        return "CurrentUser{" +
                "user=" + user +
                "} " + super.toString();
    }
}
