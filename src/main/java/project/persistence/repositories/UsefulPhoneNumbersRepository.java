package project.persistence.repositories;

/**
 * Created by hrabby on 4.11.2015.
 */

import org.springframework.data.jpa.repository.JpaRepository;
import project.persistence.entities.Info.UsefulPhoneNumbers;

import java.util.List;

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface UsefulPhoneNumbersRepository extends JpaRepository<UsefulPhoneNumbers, Long> {

    UsefulPhoneNumbers save(UsefulPhoneNumbers usefulPhoneNumbers);

    void delete(UsefulPhoneNumbers usefulPhoneNumbers);

    List<UsefulPhoneNumbers> findAll();

    List<UsefulPhoneNumbers> findByOwner(String owner);

    UsefulPhoneNumbers findOne(Long id);

}