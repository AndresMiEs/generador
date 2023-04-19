package com.generador.servicios.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generador.modelo.Dados;
import com.generador.modelo.Profesiones;
import com.generador.modelo.Razas;
import com.generador.repositories.ProfesionesRepository;
import com.generador.servicios.ProfesionesServices;

@Service
public class ProfesionesServicesImpl implements ProfesionesServices {
    @Autowired
    private ProfesionesRepository profesionesRepository;
    
    @Autowired
    private Dados dados;

    @Override
    public void create(Profesiones profesiones) {
        profesionesRepository.save(profesiones);
    }

    @Override
    public Profesiones read(String nombre) {
        Optional<Profesiones> optional = profesionesRepository.findById(nombre);
        return optional.isPresent() ? optional.get() : null;
    }

    @Override
    public boolean delete(String nombre) {
        profesionesRepository.deleteById(nombre);
        return !profesionesRepository.existsById(nombre);
    }

    @Override
    public List<Profesiones> getAll() {
        return profesionesRepository.findAll();
    }
    @Override
    public List<Profesiones> getProfesionesByRaza_id(Razas raza_id) {
        return profesionesRepository.findByRazaId(raza_id.getId());
    }

    @Override
    public Profesiones getProfesionAleatoriaByRaza(Razas raza, int tirada) {
        List<Profesiones> profesiones = profesionesRepository.findByRazaId(raza.getId());
        for (Profesiones profesion : profesiones) {
            if (tirada >= profesion.getRango_min() && tirada <= profesion.getRango_max()) {
                return profesion;
            }
        }
        return null;
    }

}
