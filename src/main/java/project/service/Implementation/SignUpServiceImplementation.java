package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.User.SignUp;
import project.persistence.repositories.SignUpRepository;
import project.service.SignUpService;

import java.util.Collections;
import java.util.List;

/**
 * Created by hrabby on 3.11.2015.
 */
@Service
public class SignUpServiceImplementation  implements SignUpService {

    SignUpRepository repository;

    @Autowired
    public SignUpServiceImplementation(SignUpRepository repository){
        this.repository = repository;
    }

    @Override
    public SignUp save(SignUp signUp) {
        return repository.save(signUp);
    }

    @Override
    public void delete(SignUp signUp) {
        repository.delete(signUp);
    }

    @Override
    public List<SignUp> findAll() {
        return repository.findAll();
    }

    //@Override
    //public List<SignUp> findByUserName(String username) {
      //  return repository.findAll();
   // }

    @Override
    public SignUp findOne(Long id) { return repository.findOne(id);}

    @Override
    public List<SignUp> findAllReverseOrder() {
        List<SignUp> signUps = repository.findAll();

        Collections.reverse(signUps);

        return signUps;
    }
}
