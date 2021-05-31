<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.formation.model.Formation" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
   <head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   </head> 
   <body>
   	  <table>
   	  	<thead>
   	  		<th>id</th>
   	  		<th>date</th>
   	  		<th>sujet</th>
   	  		<th>formateur</th>
   	  		<th>paieFormateur</th>
   	  		<th>statut</th>
   	  		<th>statutFormateur</th>
   	  	</thead>
   	  	<tbody>
   	  		<% List formations = (List)request.getAttribute("formations"); %>
   	  		<% for(Object f: formations) { %>
   	  			<tr>
   	  				<td><%=((Formation)f).getId() %></td>
   	  				<td><%=((Formation)f).getDate() %></td>
   	  				<td><%=((Formation)f).getSujet().getNom() %></td>
   	  				<td><%=((Formation)f).getFormateur().getNom() %></td>
   	  				<td><%=((Formation)f).getPaieFormateur() %></td>
   	  				<td><%=((Formation)f).getStatut() %></td>
   	  				<td><%=((Formation)f).getStatutFormateur() %></td>
   	  			</tr>
   	  		<% } %> 
   	  	</tbody>
   	  </table>
   	  
      <form id="addFormationForm" action = "" method = "POST">
         Date: <input type = "text" name = "date"><br />
         Sujet: <input type = "text" name = "sujet" /><br />
         Formateur: <input type = "text" name = "formateur" /><br />
         PaieFormateur: <input type = "integer" name = "paieFormateur" /><br />
         <input type = "submit" value = "Submit" />
      </form>
      
      <script>
      	$('#addFormationForm').submit(function(event) {
    	    event.preventDefault(); 
    	    
    	    var form = $(this);
    	    $.ajax({
    	      type: form.attr('method'),
    	      url: form.attr('action'),
    	      data: form.serialize()
    	    }).done(function(data) {
    	      // Optionally alert the user of success here...
    	    }).fail(function(data) {
    	      // Optionally alert the user of an error here...
    	    });
    	  });
      </script>
   </body>
</html>