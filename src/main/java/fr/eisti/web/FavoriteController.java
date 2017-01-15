package fr.eisti.web;

import fr.eisti.domain.Favorite;
import fr.eisti.domain.User;
import fr.eisti.repository.FavoriteRepository;
import fr.eisti.repository.UserRepository;
import fr.eisti.service.FavoriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

/**
 * Created by ivan on 13/01/17.
 */
@RestController
public class FavoriteController {

    @Autowired
    private FavoriteService favoriteService;

    @RequestMapping("/favorites/all")
    public Iterable List() {
        return favoriteService.getFavoriteList();
    }

    @RequestMapping("/favorites/add")
    public Favorite add(@RequestBody Favorite favorite) {
        return favoriteService.add(favorite);
    }

    @RequestMapping("/favorites/findOne")
    public Favorite findOne(@RequestBody Favorite favorite) {
        Favorite fav = favoriteService.findOne(favorite);
        return fav == null ? new Favorite() : fav;
    }

    @RequestMapping("/favorites/delete/{id}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable("id") int id) {
        favoriteService.delete(id);
    }
}
