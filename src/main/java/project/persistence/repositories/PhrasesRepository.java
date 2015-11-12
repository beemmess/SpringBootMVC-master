package project.persistence.repositories;

/**
 * Created by hrabby on 4.11.2015.
 */

import org.springframework.data.jpa.repository.JpaRepository;
import project.persistence.entities.Info.Phrases;

import java.util.List;

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface PhrasesRepository extends JpaRepository<Phrases, Long> {

    Phrases save(Phrases phrases);

    void delete(Phrases phrases);

    List<Phrases> findAll();

    List<Phrases> findByType(String type);

    Phrases findOne(Long id);

}
