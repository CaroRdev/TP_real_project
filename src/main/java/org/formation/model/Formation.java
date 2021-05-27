package org.formation.model;

import jakarta.annotation.ManagedBean;

@ManagedBean
public class Formation extends BaseModel {
	private String date;
	private Sujet sujet;
	private Formateur formateur;
	private Integer paieFormateur;
	private String statut;
	private String statutFormateur;
	private Long id;
	
	public Formation() {}
	public Formation(String date, Sujet sujet, Formateur formateur, Integer paieFormateur, String statut,
			String statutFormateur, Long id) {
		super();
		this.date = date;
		this.sujet = sujet;
		this.formateur = formateur;
		this.paieFormateur = paieFormateur;
		this.statut = statut;
		this.statutFormateur = statutFormateur;
		this.id = id;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Sujet getSujet() {
		return sujet;
	}

	public void setSujet(Sujet sujet) {
		this.sujet = sujet;
	}

	public Formateur getFormateur() {
		return formateur;
	}

	public void setFormateur(Formateur formateur) {
		this.formateur = formateur;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	public String getStatutFormateur() {
		return statutFormateur;
	}

	public void setStatutFormateur(String statutFormateur) {
		this.statutFormateur = statutFormateur;
	}
	public Integer getPaieFormateur() {
		return paieFormateur;
	}
	public void setPaieFormateur(Integer paieFormateur) {
		this.paieFormateur = paieFormateur;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
}
