package project.service.Implementation;

import project.persistence.entities.User.CurrentUser;
import project.persistence.entities.User.User.Role;
import project.service.CurrentUserService;

public class CurrentUserServiceImplementation implements CurrentUserService {

    @Override
    public boolean canAccessUser(CurrentUser currentUser, Long userId) {
        return currentUser != null
                && (currentUser.getRole() == Role.ADMIN || currentUser.getId().equals(userId));
    }


}
