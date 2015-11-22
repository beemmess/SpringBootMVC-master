
package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import project.persistence.entities.User.CurrentUser;
import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;
import project.persistence.repositories.UserRepository;
import project.service.UserService;

import java.util.List;
import java.util.Collections;
import java.util.Optional;

@Service
public class UserServiceImplementation implements UserService {

    UserRepository repository;
    UserService userService;

    @Autowired
    public UserServiceImplementation(UserService userService, UserRepository repository){
        this.userService = userService;
        this.repository = repository;
    }

    @Override
    public User save(User user) {
        return repository.save(user);
    }

    @Override
    public Optional<User> getUserByName(String username){
        return repository.findOneByUsername(username);
    }

    @Override
    public Optional<User> getUserByEmail(String email){
        return repository.findOneByEmail(email);
    }

    @Override
    public User create(UserCreateForm form) {
        User user = new User();
        user.setUsername(form.getUsername());
        user.setEmail(form.getEmail());
        user.setPassword(form.getPassword());
        return repository.save(user);
    }


    @Override
    public CurrentUser loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userService.getUserByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("User with email=%s was not found", email)));
        return new CurrentUser(user);
    }


}