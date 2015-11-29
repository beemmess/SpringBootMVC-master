
package project.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;

import java.util.Collection;
import java.util.List;
import java.util.Optional;


public interface UserService {

    //User Registration
    Optional<User> getUserByName(String username);
    Optional<User> getUserByEmail(String email);
    Optional<User> getUserById(long id);


    User create(UserCreateForm form);

    Collection<User> getAllUsers();



}