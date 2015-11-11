package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Info.Phrases;
import project.persistence.repositories.PhrasesRepository;
import project.service.PhrasesService;

import java.util.Collections;
import java.util.List;

/**
 * Created by hrabby on 4.11.2015.
 */
@Service
public class PhrasesServiceImplementation implements PhrasesService{


    // Instance Variables
    PhrasesRepository repository;

    // Dependency Injection
    @Autowired
    public PhrasesServiceImplementation(PhrasesRepository repository) {this.repository = repository;}

    @Override
    public Phrases save(Phrases phrases) { return repository.save(phrases);}

    @Override
    public void delete(Phrases phrases) {repository.delete(phrases);}

    @Override
    public List<Phrases> findAll() {return repository.findAll();}

    @Override
    public List<Phrases> findAllReverseOrder() {
        List<Phrases> phrase = repository.findAll();
        Collections.reverse(phrase);

        return phrase;
    }

    @Override
    public Phrases findOne(Long id){ return  repository.findOne(id);}

    @Override
    public List<Phrases> findByType(String type){
        return repository.findByType(type);
    }
}
