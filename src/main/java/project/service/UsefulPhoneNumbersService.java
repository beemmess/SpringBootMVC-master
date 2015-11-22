package project.service;

import project.persistence.entities.Info.UsefulPhoneNumbers;

import java.util.List;

/**
 * Created by hrabby on 4.11.2015.
 */
public interface UsefulPhoneNumbersService {

    /**
     * Save a {@link UsefulPhoneNumbers}
     * @param usefulPhoneNumbers {@link UsefulPhoneNumbers} to be saved
     * @return {@link UsefulPhoneNumbers} that was saved
     */
    UsefulPhoneNumbers save(UsefulPhoneNumbers usefulPhoneNumbers);

    /**
     * Delete {@link UsefulPhoneNumbers}
     * @param usefulPhoneNumbers {@link UsefulPhoneNumbers} to be deleted
     */
    void delete(UsefulPhoneNumbers usefulPhoneNumbers);

    /**
     * Get all {@link UsefulPhoneNumbers}
     * @return A list of {@link UsefulPhoneNumbers}
     */
    List<UsefulPhoneNumbers> findAll();


    /**
     * Get all {@link UsefulPhoneNumbers} in reverse order
     * @return A reversed list of {@link UsefulPhoneNumbers}
     */
    List<UsefulPhoneNumbers> findAllReverseOrder();


    /**
     * Find a {@link UsefulPhoneNumbers} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link UsefulPhoneNumbers} whith {@link Long id}
     */
    UsefulPhoneNumbers findOne(Long id);


    /**
     * Find all {@link UsefulPhoneNumbers} with {@link String owner}
     * @param owner {@link String}
     * @return All {@link UsefulPhoneNumbers} with the {@link String owner} passed
     */
    List<UsefulPhoneNumbers> findByOwner(String owner);
}



