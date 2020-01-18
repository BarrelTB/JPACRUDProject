<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Current Item!</title>
</head>
<body>
<form action="Updated.do" method="post">
	Name:<input type="text" name="name" size="100" value="${item.name}" /><br>

		Description:<input type="text" name="description" size="10000" value="${item.description}"/><br> 
		Manufacturer:<input type="text" name="manufacturer" size="100" value="${item.manufacturer}" /><br>
		Link:<input type="text" name="link" size="2000" value="${item.link}" /><br> 
		Age Range: <input type="text" name="ageRange" size="45" value="${item.ageRange}" /><br> 
		Purchase Year: <input type="number" name="purchaseYear" size="4" value="${item.purchaseYear}" /><br> 
		Number of item Available:<input type="number" name="numAvailable" size="5" value="${item.numAvailable}" /><br>
		Quality: <select name="quality">

			<option value="SUPERB">SUPERB</option>
			<option value="GREAT">GREAT</option>
			<option value="GOOD">GOOD</option>
			<option value="OKAY">OKAY</option>

		</select><br> 
		Price:<input type="number" step=any name="price" size="500" value="${item.price}"/><br> 
		
	<input type="hidden" value="${item.id}" name="id"/>
	<input type="hidden" value="${item}" name="item"/>
	<input type="submit" value="Update" /><br>
	</form>

<a href="home.do">Home</a>
</body>
</html>