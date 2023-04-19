package com.generador.controlador;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.generador.modelo.Personaje;
import com.generador.modelo.Profesiones;
import com.generador.modelo.Razas;
import com.generador.repositories.RazasRepository;
import com.generador.servicios.ProfesionesServices;
import com.generador.modelo.Dados;


@Controller

public class PersonajeController {
	
	private static final Logger logger = Logger.getLogger(PersonajeController.class);
	
	@Autowired
    private RazasRepository razasRepository;
    
    @Autowired
    private ProfesionesServices profesionesServices;

    @GetMapping("/mostrarPersonajeAleatorio")
    public ModelAndView mostrarPersonajeAleatorio() throws IOException {
        // Create logger   	
        logger.info("Comenzando nueva creación de Personaje");
        
        //Obtenemos una raza aleatoria
        List<Razas> razas = razasRepository.findAll();
        Random rand = new Random();
        Razas razaAleatoria = razas.get(rand.nextInt(razas.size()));
        logger.info("La raza obtenida es: " + razaAleatoria.getNombre());
 
        //Con la raza aleatoria, obtenemos los stats base de ésta y calculamos los stats finales con el método tirada.
        Personaje personaje = new Personaje(razaAleatoria);
        personaje.tiradaStats();
        

        //Obtenemos las profesiones de la raza aleatoria
        List<Profesiones> profesiones = profesionesServices.getProfesionesByRaza_id(razaAleatoria);

        //Seleccionamos la profesión aleatoria
        int tirada = Dados.tirada(1, 100);
        
        logger.info("La tirada de profesión es: " + tirada);
        Profesiones profesionSeleccionada = profesionesServices.getProfesionAleatoriaByRaza(razaAleatoria, tirada);
        
        String claseProfesion = profesionSeleccionada.getClase();
        logger.info("La clase obtenida es: " + claseProfesion);
        
        String nombreProfesion = profesionSeleccionada.getNombre();
        logger.info("La profesión obtenida es: " + nombreProfesion);

        //Creamos la vista y mostramos el personaje
        ModelAndView mav = new ModelAndView("personajeAleatorio.html");
        mav.addObject("personaje", personaje);
        mav.addObject("profesiones", profesiones);
        mav.addObject("claseProfesion", claseProfesion);
        mav.addObject("nombreProfesion", nombreProfesion);

        return mav;
    }
    
    @GetMapping("/mostrarPersonajePorRaza")
    public ModelAndView mostrarPersonajePorRaza(@RequestParam(value = "raza", required=false) String razaSeleccionada) throws IOException {
      // Create logger   	
      logger.info("Comenzando nueva creación de Personaje por raza " + razaSeleccionada);

      //Obtenemos la raza seleccionada de la base de datos
      Razas raza = null;
      if(razaSeleccionada != null && !razaSeleccionada.isEmpty()) {
        raza = razasRepository.findByNombre(razaSeleccionada);
      }
      
      //Si no se encontró la raza seleccionada, se genera una aleatoria
      if(raza == null) {
        List<Razas> razas = razasRepository.findAll();
        Random rand = new Random();
        raza = razas.get(rand.nextInt(razas.size()));
        logger.info("La raza obtenida aleatoriamente es: " + raza.getNombre());
      } else {
        logger.info("La raza obtenida es: " + raza.getNombre());
      }

        //Con la raza seleccionada, obtenemos los stats base de ésta y calculamos los stats finales con el método tirada.
        Personaje personaje = new Personaje(raza);
        personaje.tiradaStats();

        //Obtenemos las profesiones de la raza seleccionada
        List<Profesiones> profesiones = profesionesServices.getProfesionesByRaza_id(raza);

        //Seleccionamos la profesión aleatoria
        int tirada = Dados.tirada(1, 100);
        logger.info("La tirada de profesión es: " + tirada);
        Profesiones profesionSeleccionada = profesionesServices.getProfesionAleatoriaByRaza(raza, tirada);
        
        String claseProfesion = profesionSeleccionada.getClase();
        logger.info("La clase obtenida es: " + claseProfesion);
        
        String nombreProfesion = profesionSeleccionada.getNombre();
        logger.info("La profesión obtenida es: " + nombreProfesion);

        //Creamos la vista y mostramos el personaje
        ModelAndView mav = new ModelAndView("personajeAleatorio.html");
        mav.addObject("personaje", personaje);
        mav.addObject("profesiones", profesiones);
        mav.addObject("claseProfesion", claseProfesion);
        mav.addObject("nombreProfesion", nombreProfesion);

        return mav;
    }
}
