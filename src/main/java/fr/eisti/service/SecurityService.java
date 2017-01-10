package fr.eisti.service;

/**
 * Created by ivan on 10/01/17.
 */
public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
