package fr.eisti.repository;

import fr.eisti.domain.Role;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by ivan on 10/01/17.
 */
public interface RoleRepository extends CrudRepository<Role, Integer> {
}
