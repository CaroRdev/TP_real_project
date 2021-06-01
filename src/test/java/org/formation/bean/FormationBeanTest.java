package org.formation.bean;

import java.util.ArrayList;
import java.util.List;

import org.formation.model.Formation;
import org.mockito.MockedStatic;
import org.mockito.Mockito;

import junit.framework.TestCase;

public class FormationBeanTest extends TestCase {
	public void testGetAllActiveFormations()
	{     
        assertEquals(2, FormationBean.getAllActiveFormations().size());
    
        try (MockedStatic<Formation> utilities = Mockito.mockStatic(Formation.class)) {
        	utilities.when(Formation::getAll).thenReturn(new ArrayList());
            
            assertEquals(0, FormationBean.getAllActiveFormations().size());
        }
	}
}
