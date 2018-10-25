<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of the items in the table.</title>
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
input[type=submit] {
   color: red;
   font-family: verdana;
}
th, td {
    border-bottom: 1px solid #ddd;
}
</style>
<body>
<h1 style = "font-family:arial;">Current art works in the collection:</h1>
<form method = "post" action = "editShoppingListServlet">
<table>
<c:forEach items="${requestScope.allItems}" var="currentitem">
<tr>
 <td><input type="radio" name="id" value="${currentitem.id}"></td>
 <td>${currentitem.artist}</td>
 <td>${currentitem.item}</td>
 <td>${currentitem.year}</td>
 </tr>
</c:forEach>
</table>
<br>
<input type = "submit" value = "Edit Selected Item"
name="doThisToItem">
<input type = "submit" value = "Delete Selected Item"
name="doThisToItem">
<input type="submit" value = "Add New Item" name = "doThisToItem">
</form>
<br>
<a href = "index.html">Home</a>
</body>
</html>