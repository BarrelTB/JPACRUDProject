<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<link rel="stylesheet" href="style.css">
<body>
<c:choose>
	<c:when test="${! empty items}">
	<div class="w3-row-padding" style="display: flex;
	justify-content: center;">
    <div class="w3-half w3-margin-bottom">
	<ul class="w3-ul w3-light-grey w3-center">
		<c:forEach var="item" items="${items}">
		<li class="w3-padding-16">
		<a href="ItemById.do?id=${item.id }">${item.name}</a>
		</li>
		</c:forEach>
	</ul>
	</div>
	</div>
		
		</c:when>
		<c:when test="${! empty item}">
				<div class="w3-row-padding" style="display: flex;
	justify-content: center;">
    				<div class="w3-half w3-margin-bottom">
      				<ul class="w3-ul w3-light-grey w3-center">
       			 		<li class="w3-dark-grey w3-xlarge w3-padding-32"><a href="${item.link}" target="_blank">${item.name }</a></li>
        				<li class="w3-padding-16">Description: ${item.description }</li>
       					<li class="w3-padding-16">Manufacturer: ${item.manufacturer }</li>
        				<li class="w3-padding-16">Age Range: ${item.ageRange }</li>
        				<li class="w3-padding-16">Purchase Year: ${item.purchaseYear }</li>
        				<li class="w3-padding-16">Number of Item Available: ${item.numAvailable }</li>
        				<li class="w3-padding-16">Quality: ${item.quality }</li>
        				<li class="w3-padding-16">Price: ${item.price }</li>
        				<li class="w3-light-grey w3-padding-24">
        				<form action="Update.do" method="GET">
        				<input type="hidden" name="id" value="${item.id}" />
        				<input type="submit" value="Update Item" class="w3-button w3-white w3-padding-large w3-hover-black"></Input>
        				</form></li>
        				<li class="w3-light-grey w3-padding-24"><form action="Delete.do" method="POST">
        				<input type="hidden" name="id" value="${item.id}" />
        				<input type="submit" value="Delete Item" class="w3-button w3-white w3-padding-large w3-hover-black"></Input>
        				</form></li>
        
      </ul>
      </div>
    </div>
				
		</c:when>
		<c:when test="${deleted}">
		<div class="w3-row-padding" style="display: flex;
	justify-content: center;">
    <div class="w3-half w3-margin-bottom">
				<c:if test="${deleted == true }">
			Deleted Item Properly
			</c:if>
				<c:if test="${deleted == false }">
			Item was not deleted properly
			</c:if>
			</div>
			</div>
			</c:when>
			<c:otherwise>
				<p>No Item(s) found</p>
			</c:otherwise>
</c:choose>
<div class="w3-container" id="contact" style="margin-top:75px">
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <form action="home.do">
      <button type="submit" class="w3-button w3-red w3-margin-bottom">Home</button>
    </form>  
  </div>
</body>
</html>