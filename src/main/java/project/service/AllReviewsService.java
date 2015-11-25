package project.service;

import project.persistence.entities.Attraction.AllReviews;
import project.persistence.entities.User.CurrentUser;

import java.util.List;
/**
 * Created by bjarkimar23 on 5.11.2015.
 */
public interface AllReviewsService {

    /**
     * save a {@link AllReviews}
     * @param allReviews {@link AllReviews} to be saved
     * @return {@link AllReviews} that was saved
     */
    AllReviews save(AllReviews allReviews);

    /**
     * delete a {@link AllReviews}
     * @param allReviews {@link AllReviews} to be saved
     *
     */
    void delete(AllReviews allReviews);

    /**
     * get all {@link AllReviews}
     * @return A list of {@link AllReviews}
     */
    List<AllReviews>findAll();

    /**
     * Get all {@link AllReviews} in reverse order
     * @return A reversed list {@link AllReviews}
     */
    List<AllReviews> findAllReverseOrder();

    /**
     * Find a {@link AllReviews} based in {@link Long id}
     * @param id {@link long}
     * @return A {@link AllReviews} with {@link Long id}
     */
    AllReviews findOne(Long id);


    AllReviews create(AllReviews reviews, CurrentUser currentUser);
}
