package fr.eisti.service;

import fr.eisti.domain.Favorite;
import fr.eisti.domain.User;
import fr.eisti.repository.FavoriteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * Created by ivan on 14/01/17.
 */
@Service
public class FavoriteServiceImpl implements FavoriteService {

    @Autowired
    private UserService userService;

    @Autowired
    private FavoriteRepository favoriteRepository;

    @Override
    public Set<Favorite> getFavoriteList() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userService.findByUsername(username);

        return user.getFavorites();
    }

    @Override
    public Favorite add(Favorite favorite) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userService.findByUsername(username);

        favorite.setUser(user);

        return favoriteRepository.save(favorite);
    }

    @Override
    public void delete(int id) {
        favoriteRepository.delete(id);
    }

    @Override
    public Favorite findOne(Favorite favorite) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userService.findByUsername(username);

        return favoriteRepository.findByDepartureAndArrivalAndUserId(favorite.getDeparture(), favorite.getArrival(), user.getId());
    }
}
