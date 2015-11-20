
package project.service;

import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;

import java.util.List;
import java.util.Optional;


public interface UserService {


    Optional<User> getUserByName(String username);

    Optional<User> getUserByEmail(String email);

    //Collection<User> getAllUsers();


    User save(User user);

    void delete(User user);

    List<User> findAll();

    List<User> findAllReverseOrder();

   // User findOne(Long id);

    User create(UserCreateForm form);
}