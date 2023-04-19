package com.generador.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generador.modelo.Razas;
import com.generador.servicios.RazasServices;

@RestController
@RequestMapping("/raza")
public class RazasController {
	
	@Autowired
	private RazasServices razasServices;
	
	@GetMapping("/{nombre}")
	public ResponseEntity<Razas> getRaza(@PathVariable String nombre) {
	    Razas raza = razasServices.read(nombre);
	    if (raza != null) {
	        return new ResponseEntity<>(raza, HttpStatus.OK);
	    } else {
	        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	    }
	}
	
	@PostMapping
	public void create(@RequestBody Razas razas) {
		razasServices.create(razas);
	}
	
	@DeleteMapping("/{nombre}")
	public boolean delete(@PathVariable String nombre) {
		return razasServices.delete(nombre);
	}
	
	@GetMapping
	public List <Razas> getRazas(){
		return razasServices.getAll();
	}
}

