package org.formation.model;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import junit.framework.TestCase;

public class FormationTest extends TestCase {
	public void testToString()
	{     
        assertEquals(
        	"Formation;20210528;NULL;1;300;Active;Original;NULL",
        	(new Formation(
        		"20210528", 
        		null, 
        		null,
        		300,
        		"Active",
        		"Original",
        		1
        	)).toString()
        );
    }
	
	public void testGetAll() {
		// What we are mainly testing here is that the method call doesn't raise
		// an error
		assertTrue(Formation.getAll() instanceof List<?>);
		assertEquals(1,Formation.getAll().stream().filter(p -> p.getStatut().equals("Fusionnee")).collect(Collectors.toList()).size());
	}
	
	public void testIsFusionnee() {
		assertFalse(new Formation("20210528",  null, null,300,"Active","Original",1).isFusionnee());
		assertTrue(new Formation("20210528",  null, null,300,"Fusionnee","Original",1).isFusionnee());
	}
}
