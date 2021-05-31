package org.formation.model;

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
}
