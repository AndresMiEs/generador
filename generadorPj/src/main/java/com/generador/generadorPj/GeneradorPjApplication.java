package com.generador.generadorPj;
import org.apache.log4j.Logger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("com.generador")
@EntityScan("com.generador.modelo")
@EnableJpaRepositories("com.generador.repositories")
public class GeneradorPjApplication {
    public static void main(String[] args) {
    	final Logger logger = Logger.getLogger(GeneradorPjApplication.class);
        logger.info("INICIANDO APLICACION GENERADOR DE PERSONAJES");
        SpringApplication.run(GeneradorPjApplication.class, args);
    }
}

