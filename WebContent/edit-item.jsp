<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit art work information.</title>
</head>
<style>
a:link {
color: red;
font-family: verdana;
}
a:visited {
color: blue;
font-family: verdana;
}
a:hover {
color: pink;
font-family: verdana;
}
a:active {
color: yellow;
font-family: verdana;
}
</style>
<body>
<h1 style = "font-family:arial;">Enter the changes:</h1>
<form action = "editItemServlet" method="post">
Artist: <input type ="text" name = "artist" value= "${itemToEdit.artist}"><br>
<br>
Item : <input type = "text" name = "item" value= "${itemToEdit.item}"><br>
<br>
Year : <input type = "text" name = "year" value= "${itemToEdit.year}"><br>
<br>
<input type = "hidden" name = "id" value="${itemToEdit.id}">
<input type = "submit" value="Save Edited Item">
</form>
<a href = "index.html">Home</a>
</body>
</html>