package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import project.persistence.entities.Attraction.AllReviews;

import java.util.List;

/**
 * Created by bjarkimar23 on 5.11.2015.
 */

/**
 * By extending the {@link JpaRepository} we have access to powerful methods.
 * For detailed information, see:
 * http://docs.spring.io/spring-data/commons/docs/current/api/org/springframework/data/repository/CrudRepository.html
 * http://docs.spring.io/spring-data/data-commons/docs/1.6.1.RELEASE/reference/html/repositories.html
 *
 */
public interface AllReviewsRepository extends JpaRepository<AllReviews, Long>{

    AllReviews save(AllReviews allReviews);

    void delete(AllReviews allReviews);

    List<AllReviews> findAll();

    AllReviews findOne(Long id);

}
