package project.service;

import project.persistence.entities.User.CurrentUser;

public interface CurrentUserService {


    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
