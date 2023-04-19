package com.generador.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "razas")
public class Razas {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String nombre;
	private int ha_base;
	private int hp_base;
	private int fuerza_base;
	private int resistencia_base;
	private int destreza_base;
	private int agilidad_base;
	private int inteligencia_base;
	private int voluntad_base;
	private int carisma_base;
	private int iniciativa_base;

	public Razas() {
        super();
        // TODO Auto-generated constructor stub
    }

	public Razas(String nombre) {
		this.nombre = nombre;
	}
	
	
	//Getters y Setters
	public int getId() {
        return id;
    }
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getHa_base() {
		return ha_base;
	}

	public void setHa_base(int ha_base) {
		this.ha_base = ha_base;
	}

	public int getHp_base() {
		return hp_base;
	}

	public void setHp_base(int hp_base) {
		this.hp_base = hp_base;
	}

	public int getFuerza_base() {
		return fuerza_base;
	}

	public void setFuerza_base(int fuerza_base) {
		this.fuerza_base = fuerza_base;
	}

	public int getResistencia_base() {
		return resistencia_base;
	}

	public void setResistencia_base(int resistencia_base) {
		this.resistencia_base = resistencia_base;
	}

	public int getAgilidad_base() {
		return agilidad_base;
	}

	public void setAgilidad_base(int agilidad_base) {
		this.agilidad_base = agilidad_base;
	}

	public int getInteligencia_base() {
		return inteligencia_base;
	}

	public void setInteligencia_base(int inteligencia_base) {
		this.inteligencia_base = inteligencia_base;
	}

	public int getVoluntad_base() {
		return voluntad_base;
	}

	public void setVoluntad_base(int voluntad_base) {
		this.voluntad_base = voluntad_base;
	}

	public int getCarisma_base() {
		return carisma_base;
	}

	public void setCarisma_base(int carisma_base) {
		this.carisma_base = carisma_base;
	}

	public int getIniciativa_base() {
		return iniciativa_base;
	}

	public void setIniciativa_base(int iniciativa_base) {
		this.iniciativa_base = iniciativa_base;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getDestreza_base() {
		return destreza_base;
	}

	public void setDestreza_base(int destreza_base) {
		this.destreza_base = destreza_base;
	}

}