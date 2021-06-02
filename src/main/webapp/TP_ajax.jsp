<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.formation.model.Formation" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
   <head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   </head> 
   <body>
	   <button type="button" onclick="exercice1()">Exercice 1</button>
	   <button type="button" onclick="exercice2()">Exercice 2</button>
	   
	   <div id="heure" class="text-center btn-warning"></div>
		
      <script>
      	function exercice1() {
      	    $.ajax({
      	      url: 'Exercice1',
      	    }).done(function(resp) {
          	    console.log(resp.message);
      	    	alert(resp.message);
      	    }).catch(function(e) {
      	    	console.log('Call to ajax worked !')
      	    	console.log(e);
      	    });
      	}; 
      	
      	function exercice2() {
      	    $.ajax({
      	      url: 'Exercice2',
      	    }).done(function(resp) {
      	    	document.getElementById("heure").innerHTML = `il est ${resp.heure}h${resp.minute}`;
      	    }).catch(function(e) {
      	    	console.log('Call to ajax worked !')
      	    	console.log(e);
      	    });
      	}; 
      </script>
   </body>
</html>