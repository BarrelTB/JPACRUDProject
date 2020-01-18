<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing Item(s)</title>
<jsp:include page="top.jsp"></jsp:include>
<link rel="stylesheet" href="style.css">
</head>
<body>

<c:choose>
	<c:when test="${! empty items}">
	<div class="list-group">
		<c:forEach var="item" items="${items}">
		<a href="ItemById.do?id=${item.id }" class="list-group-item">${item.name}</a>
		</c:forEach>
		</div>
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
<footer>
<a href="home.do">Home</a>
</footer>
</body>
<jsp:include page="bottom.jsp"></jsp:include>
</html>