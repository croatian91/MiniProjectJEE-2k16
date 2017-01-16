package fr.eisti;

import fr.eisti.domain.Station;
import fr.eisti.repository.StationRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;

@SpringBootApplication
public class MiniProjectJee2k16Application extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(MiniProjectJee2k16Application.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(MiniProjectJee2k16Application.class, args);
    }

    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }

    @Bean
    CommandLineRunner init(RestTemplate restTemplate, StationRepository stationRepository) {
        ResponseEntity<Station[]> responseEntity = restTemplate.getForEntity("https://api.jcdecaux.com/vls/v1/stations?contract=Paris&apiKey=85871bc0de9ac4eef048c1d768fe08909b3432d7", Station[].class);
        Station[] stations = responseEntity.getBody();
        return (evt) -> Arrays.asList(stations).forEach(
                station -> {
                    if (stationRepository.findByNumber(station.getNumber()) == null)
                        stationRepository.save(station);
                });
    }
}
