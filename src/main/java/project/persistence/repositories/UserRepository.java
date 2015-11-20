
package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import project.persistence.entities.User.User;

import java.util.List;
import java.util.Optional;


public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findOneByName(String username);
    Optional<User> findOneByEmail(String email);

    //User save(User user);

    //void delete(User user);

    //List<User> findAll();

    //User findOne(Long id);

}
