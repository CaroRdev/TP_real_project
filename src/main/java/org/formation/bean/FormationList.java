package org.formation.bean;

import java.io.Serializable;
import java.util.ArrayList;

import org.formation.model.Formation;

import jakarta.annotation.ManagedBean;

@ManagedBean
public class FormationList extends ArrayList<Formation> implements Serializable {
	public FormationList() {
		super();
	}
}
