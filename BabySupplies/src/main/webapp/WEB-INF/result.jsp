<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing Item(s)</title>
</head>
<body>
<div>
<c:choose>
	<c:when test="${! empty items}">
		<ul>
		<c:forEach var="item" items="${items}">
		<li><a href="ItemById.do?id=${item.id }">${item.name}</a></li>
		</c:forEach>
		</ul>
		</c:when>
		<c:when test="${! empty item}">
				<ul>
					<li>Name: <a href="${item.link}">${item.name}</a></li>
					<li>Description: ${item.description}</li>
					<li>Manufacturer: ${item.manufacturer}</li>
					<li>Age Range: ${item.ageRange}</li>
					<li>Purchase Year: ${item.purchaseYear}</li>
					<li>Number of item Available: ${item.numAvailable}</li>
					<li>Quality: ${item.quality}</li>
					<li>Price: ${item.price}</li>
				</ul>
				<form action="Update.do" method="GET">
					<input type="hidden" name="id" value="${item.id}" /> <input
						type="submit" value="Update Item" />
				</form>
				<form action="Delete.do" method="POST">
					<input type="hidden" name="id" value="${item.id}" /> <input
						type="submit" value="Delete Item" />
				</form>
				
		</c:when>
		<c:when test="${deleted}">
				<c:if test="${deleted == true }">
			Deleted Item Properly
			</c:if>
				<c:if test="${deleted == false }">
			Item was not deleted properly
			</c:if>
			</c:when>
			<c:otherwise>
				<p>No Item(s) found</p>
			</c:otherwise>
</c:choose>
</div>
<a href="home.do">Home</a>
</body>
</html>