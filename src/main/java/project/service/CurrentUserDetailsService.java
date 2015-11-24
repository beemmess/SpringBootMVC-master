package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import project.persistence.entities.User.CurrentUser;
import project.persistence.entities.User.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import project.service.UserService;



@Service
public class CurrentUserDetailsService implements UserDetailsService {

    UserService userService;


    @Autowired
    public CurrentUserDetailsService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public CurrentUser loadUserByUsername(String username) {
        User user = userService.getUserByName(username)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("User with username=%s was not found", username)));
        return new CurrentUser(user);
    }
}
