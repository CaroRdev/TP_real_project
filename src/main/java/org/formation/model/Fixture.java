package org.formation.model;

import java.util.ArrayList;
import java.util.List;

public class Fixture {
	private static List<Sujet> sujetFixture = null;
	private static List<Formation> formationFixture = null;
	private static List<Formateur> formateurFixture = null;
	
	public static List<Sujet> getSujetList() {
		if( sujetFixture == null ) initAll();
		return sujetFixture;
	}
	
	public static List<Formation> getFormationList() {
		if( formationFixture == null ) initAll();
		return formationFixture;
	}

	public static List<Formateur> getFormateurList() {
		if( formateurFixture == null ) initAll();
		return formateurFixture;
	}
	
	private static void initAll() {
		sujetFixture = new ArrayList<Sujet>();
		sujetFixture.add(new Sujet("Alchimie", 1));
	}
}
