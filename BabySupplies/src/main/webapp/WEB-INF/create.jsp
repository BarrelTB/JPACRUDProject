<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create an Item!</title>
</head>
<body>
<form action="Created.do" method="post">
	Name:<input type="text" name="name" size="100" /><br>

		Description:<input type="text" name="description" size="10000"/><br> 
		Manufacturer:<input type="text" name="manufacturer" size="100" /><br>
		Link:<input type="text" name="link" size="2000" /><br> 
		Age Range: <input type="text" name="ageRange" size="45" /><br> 
		Purchase Year: <input type="number" name="purchaseYear" size="4" /><br> 
		Number of item Available:<input type="number" name="numAvailable" size="5" /><br>
		Quality: <select name="quality">

			<option value="SUPERB">SUPERB</option>
			<option value="GREAT">GREAT</option>
			<option value="GOOD">GOOD</option>
			<option value="OKAY">OKAY</option>

		</select><br> 
		Price:<input type="number" step=any name="price" size="500"/><br> 
		
	<input type="hidden" value="${item}" name="film"/>
	<input type="submit" value="Create" /><br>
	</form>
<a href="home.do">Home</a>
</body>
</html>