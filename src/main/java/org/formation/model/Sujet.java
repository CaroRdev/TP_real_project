package org.formation.model;

import java.util.List;

public class Sujet extends BaseModel {
	private static List<Sujet> sujetList = null;
	
	public static List<Sujet> getAll() {
		if(sujetList == null) sujetList = Fixture.getSujetList();
		return sujetList;
	}
	
	private Long id;
	private String nom;
	
	public Sujet(String nom, Long id) {
		super();
		this.nom = nom;
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
}
