package com.generador.modelo;

import org.apache.log4j.Logger;

public class Personaje {
	
	private int id;
	private String nombre;
    private String apellido;
    private String sexo;
	private String nombreRaza;
    private String color_pelo;
    private String color_ojos;
    private int ha;
	private int hp;
    private int fuerza;
    private int resistencia;
    private int destreza;
    private int agilidad;
    private int inteligencia;
    private int voluntad;
    private int carisma;
    private int iniciativa;
    private Razas raza;
    
    public Personaje(Razas raza) {
        this.raza = raza;
    }
    public void tiradaStats() {
    	final Logger logger = Logger.getLogger(getClass());
    	
        // Calculamos los stats del personaje en base a los valores base de la raza
    	setNombreRaza(raza.getNombre());
    	logger.info("Iniciando la generación de stats.");
        ha = raza.getHa_base() + Dados.tirada(2, 10);
        hp = raza.getHp_base() + Dados.tirada(2, 10);
        fuerza = raza.getFuerza_base() + Dados.tirada(2, 10);
        resistencia = raza.getResistencia_base() + Dados.tirada(2, 10);
        destreza = raza.getDestreza_base() + Dados.tirada(2, 10);
        agilidad = raza.getAgilidad_base() + Dados.tirada(2, 10);
        inteligencia = raza.getInteligencia_base() + Dados.tirada(2, 10);
        voluntad = raza.getVoluntad_base() + Dados.tirada(2, 10);
        carisma = raza.getCarisma_base() + Dados.tirada(2, 10);
        iniciativa = raza.getIniciativa_base() + Dados.tirada(2, 10);

        // Añadimos el mensaje de log con los stats calculados
        logger.info("Los Stats calculados son: " +
                    "HA: " + ha +
                    ", HP: " + hp +
                    ", Fuerza: " + fuerza +
                    ", Resistencia: " + resistencia +
                    ", Destreza: " + destreza +
                    ", Agilidad: " + agilidad +
                    ", Inteligencia: " + inteligencia +
                    ", Voluntad: " + voluntad +
                    ", Carisma: " + carisma +
                    ", Iniciativa: " + iniciativa);
    }
    
    // Getters y Setters
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
   
	public int getHa() {
		return ha;
	}
	public void setHa(int ha) {
		this.ha = ha;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public int getFuerza() {
		return fuerza;
	}
	public void setFuerza(int fuerza) {
		this.fuerza = fuerza;
	}
	public int getResistencia() {
		return resistencia;
	}
	public void setResistencia(int resistencia) {
		this.resistencia = resistencia;
	}
	public int getDestreza() {
		return destreza;
	}
	public void setDestreza(int destreza) {
		this.destreza = destreza;
	}
	public int getAgilidad() {
		return agilidad;
	}
	public void setAgilidad(int agilidad) {
		this.agilidad = agilidad;
	}
	public int getInteligencia() {
		return inteligencia;
	}
	public void setInteligencia(int inteligencia) {
		this.inteligencia = inteligencia;
	}
	public int getVoluntad() {
		return voluntad;
	}
	public void setVoluntad(int voluntad) {
		this.voluntad = voluntad;
	}
	public int getCarisma() {
		return carisma;
	}
	public void setCarisma(int carisma) {
		this.carisma = carisma;
	}
	public int getIniciativa() {
		return iniciativa;
	}
	public void setIniciativa(int iniciativa) {
		this.iniciativa = iniciativa;
	}
	public Razas getRaza() {
		return raza;
	}
	public void setRaza(Razas raza) {
		this.raza = raza;
	}
	public String getNombreRaza() {
		return nombreRaza;
	}
	public void setNombreRaza(String nombreRaza) {
		this.nombreRaza = nombreRaza;
	}
    public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getColor_pelo() {
		return color_pelo;
	}
	public void setColor_pelo(String color_pelo) {
		this.color_pelo = color_pelo;
	}
	public String getColor_ojos() {
		return color_ojos;
	}
	public void setColor_ojos(String color_ojos) {
		this.color_ojos = color_ojos;
	}
}
