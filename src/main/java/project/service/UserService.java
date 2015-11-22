
package project.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;

import java.util.List;
import java.util.Optional;


public interface UserService {

    //User Registration
    Optional<User> getUserByName(String username);
    Optional<User> getUserByEmail(String email);
    User save(User user);
    User create(UserCreateForm form);


    //User Login
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;

}