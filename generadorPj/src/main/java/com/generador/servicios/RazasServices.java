package com.generador.servicios;

import java.util.List;

import com.generador.modelo.Razas;

public interface RazasServices{
	void create(Razas razas);
	Razas read(String nombre);
	boolean delete(String nombre);
	List<Razas> getAll();
	
}
