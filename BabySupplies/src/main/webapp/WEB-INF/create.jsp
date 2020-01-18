<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create an Item!</title>
<jsp:include page="top.jsp"></jsp:include>
<link rel="stylesheet" href="style.css">
</head>
<body>
<form action="Created.do" method="post">
	Name:<br><input type="text" name="name" size="100" /><br>

		Description:<br><input type="text" name="description" size="10000"/><br> 
		Manufacturer:<br><input type="text" name="manufacturer" size="100" /><br>
		Link:<br><input type="text" name="link" size="2000" /><br> 
		Age Range:<br> <input type="text" name="ageRange" size="45" /><br> 
		Purchase Year: <br><input type="number" name="purchaseYear" size="4" /><br> 
		Number of item Available:<br><input type="number" name="numAvailable" size="5" /><br>
		Quality: <br><select name="quality">

			<option value="SUPERB">SUPERB</option>
			<option value="GREAT">GREAT</option>
			<option value="GOOD">GOOD</option>
			<option value="OKAY">OKAY</option>

		</select><br> 
		Price:<br><input type="number" step=any name="price" size="500"/><br> 
		
	<input type="hidden" value="${item}" name="film"/>
	<input type="submit" value="Create" /><br>
	</form>
<footer>
<a href="home.do">Home</a>
</footer>
</body>
<jsp:include page="bottom.jsp"></jsp:include>
</html>