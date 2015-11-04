package project.service;

import project.persistence.entities.User.SignUp;

import java.util.List;

/**
 * Created by hrabby on 3.11.2015.
 */
public interface SignUpService {

    /**
     * save a {@link SignUp}
     * @param signUp {@link SignUp} to be saved
     * @return {@link SignUp} that was saved
     */
    SignUp save(SignUp signUp);


    /**
     * Delete {@link SignUp}
     * @param signUp {@link SignUp} to be deleted
     */
    void delete(SignUp signUp);

    /**
     * Get all {@link SignUp}
     * @return A list of {@link SignUp}
     */
    List<SignUp> findAll();

    /**
     * Find all {@link SignUp} with {@link String userName}
     * @param userName {@link String}
     * @return All {@link SignUp}s with a {@link String userName} passed
     */
    List<SignUp> findByUserName(String userName);
}
