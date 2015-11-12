package project.service;

import project.persistence.entities.Info.Phrases;

import java.util.List;

/**
 * Created by hrabby on 4.11.2015.
 */
public interface PhrasesService {

    /**
     * Save a {@link Phrases}
     * @param phrases {@link Phrases} to be saved
     * @return {@link Phrases} that was saved
     */
    Phrases save(Phrases phrases);

    /**
     * Delete {@link Phrases}
     * @param phrases {@link Phrases} to be deleted
     */
    void delete(Phrases phrases);

    /**
     * Get all {@link Phrases}
     * @return A list of {@link Phrases}
     */
    List<Phrases> findAll();


    /**
     * Get all {@link Phrases} in reverse order
     * @return A reversed list of {@link Phrases}
     */
    List<Phrases> findAllReverseOrder();


    /**
     * Find a {@link Phrases} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link Phrases} whith {@link Long id}
     */
    Phrases findOne(Long id);


    /**
     * Find all {@link Phrases} with {@link String type}
     * @param type {@link String}
     * @return All {@link Phrases} with the {@link String type} passed
     */
    List<Phrases> findByType(String type);
}



