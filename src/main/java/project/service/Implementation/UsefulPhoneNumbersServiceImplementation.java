package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Info.UsefulPhoneNumbers;
import project.persistence.repositories.UsefulPhoneNumbersRepository;
import project.service.UsefulPhoneNumbersService;

import java.util.Collections;
import java.util.List;

@Service
public class UsefulPhoneNumbersServiceImplementation implements UsefulPhoneNumbersService{


    // Instance Variables
    UsefulPhoneNumbersRepository repository;

    // Dependency Injection
    @Autowired
    public UsefulPhoneNumbersServiceImplementation(UsefulPhoneNumbersRepository repository) {this.repository = repository;}

    @Override
    public UsefulPhoneNumbers save(UsefulPhoneNumbers usefulPhoneNumbers) { return repository.save(usefulPhoneNumbers);}

    @Override
    public void delete(UsefulPhoneNumbers usefulPhoneNumbers) {repository.delete(usefulPhoneNumbers);}

    @Override
    public List<UsefulPhoneNumbers> findAll() {return repository.findAll();}

    @Override
    public List<UsefulPhoneNumbers> findAllReverseOrder() {
        List<UsefulPhoneNumbers> usefulPhoneNumbers = repository.findAll();
        Collections.reverse(usefulPhoneNumbers);

        return usefulPhoneNumbers;
    }

    @Override
    public UsefulPhoneNumbers findOne(Long id){ return  repository.findOne(id);}

    @Override
    public List<UsefulPhoneNumbers> findByOwner(String owner){
        return repository.findByOwner(owner);
    }
}
