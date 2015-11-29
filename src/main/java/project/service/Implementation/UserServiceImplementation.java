
package project.service.Implementation;

import org.springframework.data.domain.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import project.persistence.entities.User.CurrentUser;
import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;
import project.persistence.repositories.UserRepository;
import project.service.UserService;

import java.util.Collection;
import java.util.List;
import java.util.Collections;
import java.util.Optional;

@Service
public class UserServiceImplementation implements UserService {

    UserRepository repository;

    @Autowired
    public UserServiceImplementation(UserRepository repository){
        this.repository = repository;
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
    public Optional<User> getUserById(long id) {
        return Optional.ofNullable(repository.findOne(id));
    }


    @Override
    public Collection<User> getAllUsers() {
        return repository.findAll(new Sort("email"));
    }

    @Override
    public User create(UserCreateForm form) {
        User user = new User();
        user.setUsername(form.getUsername());
        user.setEmail(form.getEmail());
        user.setPassword(new BCryptPasswordEncoder().encode(form.getPassword()));
        user.setRole(form.getRole());
        return repository.save(user);
    }

}