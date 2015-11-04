package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import project.persistence.entities.User.SignUp;

import java.util.List;

/**
 * Created by hrabby on 3.11.2015.
 */
public interface SignUpRepository extends JpaRepository<SignUp, Long> {


    SignUp save(SignUp signUp);

    void delete(SignUp signUp);

    List<SignUp> findAll();

    List<SignUp> findByUserName(String userName);
}
