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
   	<div class="container my-3 p-2 bg-light">
	   	<div class="row">
		   <div class="col text-center">
		   	<button class="btn btn-info" type="button" onclick="exercice1()">Exercice 1</button>
		   </div>
		   <div class="col text-center">
		   	<button class="btn btn-info" type="button" onclick="exercice2()">Exercice 2</button>
		   </div>
		   <div class="col text-center">
		   	<button class="btn btn-info" type="button" onclick="exercice3()">Exercice 3</button>
		   </div>
		</div>
	</div>
	
	
	<div class="container text-center">
		<div id="heure"></div>
	</div>

	<div class="container my-3 p-2" id="cards">
	  <div class="card-columns" id="citation"></div>
	</div>
		
      <script>

      	let new_line = "";
      
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
      	    	document.getElementById("heure").className ="btn btn-lg btn-warning";
      	    }).catch(function(e) {
      	    	console.log('Call to ajax worked !')
      	    	console.log(e);
      	    });
      	}; 

      	function exercice3() {
      	    $.ajax({
      	      url: 'Exercice3',
      	    }).done(function(resp) {
      	    	new_line += `<div class="card"><div class="card-body">${resp.citation}</div></div>`;
      	    	document.getElementById("citation").innerHTML = new_line;
      	    	document.getElementById("cards").className ="container my-3 p-2 bg-light";
      	    }).catch(function(e) {
      	    	console.log('Call to ajax worked !')
      	    	console.log(e);
      	    });
      	}; 
      	
      </script>
   </body>
</html>