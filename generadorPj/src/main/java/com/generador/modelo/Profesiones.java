package com.generador.modelo;


import org.springframework.data.relational.core.mapping.Table;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
@Table (name = "profesiones")
public class Profesiones {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String nombre;
	private String clase;
	private int rango_min;
	private int rango_max;
	
	@ManyToOne
	@JoinColumn(name = "raza_id")
	private Razas raza;
	
	
	
	
	public Profesiones() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	// Getters y setters
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getClase() {
		return clase;
	}
	
	public void setClase(String clase) {
		this.clase = clase;
	}
	
	public int getRango_min() {
		return rango_min;
	}
	
	public void setRango_min(int rango_min) {
		this.rango_min = rango_min;
	}
	
	public int getRango_max() {
		return rango_max;
	}
	
	public void setRango_max(int rango_max) {
		this.rango_max = rango_max;
	}
	
	public Razas getRaza() {
		return raza;
	}
	
	public void setRaza(Razas raza) {
		this.raza = raza;
	}
}
