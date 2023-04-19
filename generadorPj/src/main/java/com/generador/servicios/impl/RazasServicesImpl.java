package com.generador.servicios.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generador.modelo.Razas;
import com.generador.repositories.RazasRepository;
import com.generador.servicios.RazasServices;



@Service
public class RazasServicesImpl implements RazasServices{

	@Autowired
	private RazasRepository razasRepository;
	
	@Override
	public void create(Razas raza) {
		razasRepository.save(raza);
	}
	@Override
	public Razas read(String nombre) {
		Optional<Razas> optional = razasRepository.findById(nombre);
		return optional.isPresent() ? optional.get() : null;
	}

	@Override
	public boolean delete(String nombre) {
		razasRepository.deleteById(nombre);
		return !razasRepository.existsById(nombre);
	}

	@Override
	public List<Razas> getAll() {
		return razasRepository.findAll();
	}


}
