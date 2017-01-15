package fr.eisti.service;

import fr.eisti.domain.Favorite;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * Created by ivan on 14/01/17.
 */
@Service
public interface FavoriteService {

    Set<Favorite> getFavoriteList();

    Favorite add(Favorite favorite);

    void delete(int id);

    Favorite findOne(Favorite favorite);
}
