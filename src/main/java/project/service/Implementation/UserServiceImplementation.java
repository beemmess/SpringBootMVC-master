
package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.User.User;
import project.persistence.repositories.UserRepository;
import project.service.UserService;

import java.util.Optional;

@Service
public class UserServiceImplementation implements UserService {

    UserRepository userRepository;


    @Autowired
    public UserServiceImplementation(UserRepository userRepository){
        this.userRepository= userRepository;
    }


    @Override
    public User save(User user ) {
        return userRepository.save(user);
    }

    //@Override
    //public Optional<User> getUserByName(String username){
    //    return userRepository.findOneByName(username);
    //}

    //@Override
    //public Optional<User> getUserByEmail(String email){
    //    return userRepository.findOneByEmail(email);
    //}

    //@Override
    //public Collection<User> getAllUsers() {
    //    return userRepository.findAll(new Sort("username"));
    //}



    //@Override
    //public User create(SignUpForm form) {
    //    User user = new User();
    //    user.setEmail(form.getUsername());
    //    user.setEmail(form.getEmail());
    //    user.setPassword(form.getPassword());
    //    return userRepository.save(user);
   // }

}