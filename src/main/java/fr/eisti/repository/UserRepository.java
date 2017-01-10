package fr.eisti.repository;

import fr.eisti.domain.User;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by ivan on 10/01/17.
 */
public interface UserRepository extends CrudRepository<User, Integer> {

    User findByUsername(String username);
}
