<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   </head> 
   <body>
   	  <h2>Liste des formateurs existants</h2>
      <form action = "" method = "POST">
         Date: <input type = "text" name = "date"><br />
         Sujet: <input type = "text" name = "sujet" /><br />
         Formateur: <input type = "text" name = "formateur" /><br />
         PaieFormateur: <input type = "integer" name = "paieFormateur" /><br />
         <input type = "submit" value = "Submit" />
      </form>
      
      <table>
      	<thead>
      		<th>
      		</th>
      		
      </table>
   </body>
</html>