package com.generador.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.generador.modelo.Razas;
@Repository
public interface RazasRepository extends JpaRepository <Razas, String> {
	Razas findByNombre(String nombre);

}
