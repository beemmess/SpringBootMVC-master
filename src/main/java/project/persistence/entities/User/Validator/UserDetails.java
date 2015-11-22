package project.persistence.entities.User.Validator;

import org.springframework.security.core.GrantedAuthority;

import java.io.Serializable;
import java.util.Collection;

/**
 * Created by hrabby on 22.11.2015.
 */
public interface UserDetails extends Serializable {
    Collection<? extends GrantedAuthority> getAuthorities();
    String getUsername();
    String getPassword();

    boolean isEnabled();

}
