package com.generador.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.generador.modelo.Profesiones;

@Repository
public interface ProfesionesRepository extends JpaRepository<Profesiones, String> {
    List<Profesiones> findByRazaId(int razaId);
}
