package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Attraction.AllReviews;
import project.persistence.repositories.AllReviewsRepository;
import project.service.AllReviewsService;

import java.util.Collections;
import java.util.List;

/**
 * Created by bjarkimar23 on 5.11.2015.
 */
@Service
public class AllReviewsServiceImplementation implements AllReviewsService{

    AllReviewsRepository repository;

    @Autowired
    public AllReviewsServiceImplementation(AllReviewsRepository repository){
        this.repository = repository;
    }

    @Override
    public AllReviews save(AllReviews allReviews){
        return repository.save(allReviews);
    }
    @Override
    public void delete(AllReviews allReviews){
        repository.delete(allReviews);
    }

    @Override
    public List<AllReviews> findAll(){
        return repository.findAll();
    }

    @Override
    public AllReviews findOne(Long id){
        return repository.findOne(id);
    }

    @Override
    public List<AllReviews> findAllReverseOrder(){
        List<AllReviews> allReviewses = repository.findAll();
        Collections.reverse(allReviewses);

        return allReviewses;
    }
}
