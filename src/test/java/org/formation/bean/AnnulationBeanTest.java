package org.formation.bean;

import java.util.ArrayList;

import org.formation.model.Formation;
import org.mockito.MockedStatic;
import org.mockito.Mockito;

import junit.framework.TestCase;

public class AnnulationBeanTest extends TestCase {
	
	public void testGetAllAnnulee() {
		assertEquals(1, AnnulationBean.selectAnnulation().size());
	}
	
/**	public void testMockGetAllAnnulee()
	{     
		// NRO-example : mocking static method
        try (MockedStatic<Formation> utilities = Mockito.mockStatic(Formation.class)) {
        	utilities.when(Formation::getAll).thenReturn(new ArrayList());
            
            assertEquals(2, AnnulationBean.selectAnnulation().size());
        }
	}
	*/
}