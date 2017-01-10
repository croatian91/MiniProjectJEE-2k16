package fr.eisti.service;

import fr.eisti.domain.User;

/**
 * Created by ivan on 10/01/17.
 */
public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
