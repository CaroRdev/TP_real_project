package org.formation.model;

public class Sujet extends BaseModel {
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
