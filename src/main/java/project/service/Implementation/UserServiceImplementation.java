
package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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

    @Autowired
    public UserServiceImplementation(UserRepository repository){
        this.repository = repository;
    }

    @Override
    public User save(User user) {
        return repository.save(user);
    }

    @Override
    public void delete(User user) { repository.delete(user);}

    @Override
    public List<User> findAll() {
        return repository.findAll();
    }

    @Override
    public List<User> findAllReverseOrder() {
        List<User> user = repository.findAll();
        Collections.reverse(user);

        return user;
    }

    @Override
    public Optional<User> getUserByName(String username){
        return repository.findOneByName(username);
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

}