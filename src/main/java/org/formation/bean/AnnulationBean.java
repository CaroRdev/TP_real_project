package org.formation.bean;

import java.util.List;

import org.formation.model.Formation;

public class AnnulationBean {

  public List<Formation> selectAnnulation() {
    Formation.getAll().stream().filter((s) -> s.isAnnulee());
    return null;
  }
  
}
