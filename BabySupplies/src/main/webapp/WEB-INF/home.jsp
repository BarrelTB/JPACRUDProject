<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<h1>Baby Share!!</h1>
<br>
	<form action="ItemsByKeyword.do" method="GET">
		Search for Baby Items by Keyword:
		<input type="text" name="keyword" size="100"/> 
		<input type="submit" value="Get Items by Keyword" />
	</form>
	<br>
	<form action="Create.do" method="GET">
		Add an Item to the Inventory!
		<input type="submit" value="Create an Item" />
	</form>
	
<a href="AllItems.do">See All Items</a>
</body>
</html>