
package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import project.persistence.entities.User.User;

import java.util.Optional;


public interface UserRepository extends JpaRepository<User, Long> {
    //Optional<User> findOneByName(String email);
    //1Optional<User> findOneByEmail(String email);

    User save(User user);

    void delete(User user);
}
