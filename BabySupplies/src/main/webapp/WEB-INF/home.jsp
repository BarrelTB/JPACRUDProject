<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<jsp:include page="top.jsp"></jsp:include>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1><svg width="500" height="200" viewBox="0 -20 500 200" preserveAspectRatio="none">
    <path id="curve" d="M73.2,148.6c4-6.1,65.5-96.8,178.6-95.6c111.3,1.2,170.8,90.3,175.1,97" />
    <text width="500">
      <textPath xlink:href="#curve">
        Baby Share!
      </textPath>
    </text>
  </svg></h1>
<br>
<div>
	<form action="ItemsByKeyword.do" method="GET">
		Search for Baby Items by Keyword:<br><br>
		<input type="text" name="keyword" size="100"/> <br>
		<input type="submit" value="Get Items by Keyword" />
	</form>
	<br>
	<form action="Create.do" method="GET">
		Add an Item to the Inventory!<br><br>
		<input type="submit" value="Create an Item" />
	</form>
	<br>
<a href="AllItems.do">See All Items</a>
</div>

</body>
<jsp:include page="bottom.jsp"></jsp:include>
</html>