package fr.eisti.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ivan on 23/12/16.
 */
@Controller
public class HomeController {

    @RequestMapping({"/home", "/"})
    public String index() {
        return "index";
    }

}
