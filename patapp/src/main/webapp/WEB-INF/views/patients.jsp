<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>ID</td>
<td>Name:</td>
<td>Age:</td>
<td>Gender:</td>
<td>Weight:</td>
<td>Contact:</td>
<td>update</td>
<td>delete</td>
</tr>
 <c:forEach var = "p" items ="${list}">
<tr>
<td>${p.id}</td>
<td>${p.name}</td>
<td>${p.age}</td>
<td>${p.gender}</td>
<td>${p.weight}</td>
<td>${p.contact}</td>
<td><a href="update.jsp?id=${p.id}" ><button>Update</button></a></td>
<td><a href="delete.jsp?id=${p.id}" ><button>Delete</button></a></td>
</tr>
</c:forEach>
</table>
</body>
</html>