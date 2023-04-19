package com.generador.servicios;

import java.util.List;

import com.generador.modelo.Profesiones;
import com.generador.modelo.Razas;

public interface ProfesionesServices {
	void create(Profesiones profesiones);
    Profesiones read(String nombre);
    boolean delete(String nombre);
    List<Profesiones> getAll();
    List<Profesiones> getProfesionesByRaza_id(Razas raza_id);
    public Profesiones getProfesionAleatoriaByRaza(Razas raza, int tirada);
}

