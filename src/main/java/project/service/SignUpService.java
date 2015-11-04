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
     * Get all {@link SignUp}s in reverse order
     * @return A reversed list {@link SignUp}s
     */
    List<SignUp> findAllReverseOrder();

    /**
     * Find a {@link SignUp} based in {@link Long id}
     * @param id {@link long}
     * @return A {@link SignUp} with {@link Long id}
     */
    SignUp findOne(Long id);


}
