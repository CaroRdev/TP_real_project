package org.formation.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

public class Formateur extends BaseModel {
	private String nom;
	private Integer Solde;
	private Long id;
	Set<Sujet> sujets = new HashSet();
	
	public Formateur() {}
	public Formateur(String nom, Integer solde, Long id) {
		super();
		this.nom = nom;
		Solde = solde;
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Integer getSolde() {
		return Solde;
	}

	public void setSolde(Integer solde) {
		Solde = solde;
	}

	public Set<Sujet> getSujets() {
		return sujets;
	}
}
