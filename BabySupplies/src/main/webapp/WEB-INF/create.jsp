<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link rel="stylesheet" href="style.css">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>
<div class="w3-container" id="contact" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Create an Item.</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p>Enter all the fields to create an item to sell or give away!</p>
    <form action="Created.do" method="post">
      <div class="w3-section">
        <label>Name:</label>
        <input class="w3-input w3-border" type="text" name="name" size="100" required>
      </div>
      <div class="w3-section">
        <label>Description:</label>
        <input class="w3-input w3-border" type="text" name="description" size="10000" required>
      </div>
      <div class="w3-section">
        <label>Manufacturer:</label>
        <input class="w3-input w3-border" type="text" name="manufacturer" size="100" required>
      </div>
      <div class="w3-section">
        <label>Link:</label>
        <input class="w3-input w3-border" type="text" name="link" size="2000" required>
      </div>
      <div class="w3-section">
        <label>Age Range:</label>
        <input class="w3-input w3-border" type="text" name="ageRange" size="45" required>
      </div>
      <div class="w3-section">
        <label>Purchase Year:</label>
        <input class="w3-input w3-border" type="number" name="purchaseYear" size="4" required>
      </div>
      <div class="w3-section">
        <label>Number of Item Available:</label>
        <input class="w3-input w3-border" type="number" name="numAvailable" size="5" required>
      </div>
      <div class="w3-section">
        <label>Quality:</label>
        <select name="quality">

			<option value="SUPERB">SUPERB</option>
			<option value="GREAT">GREAT</option>
			<option value="GOOD">GOOD</option>
			<option value="OKAY">OKAY</option>

		</select>
      </div>
      <div class="w3-section">
        <label>Price:</label>
        <input class="w3-input w3-border" type="number" step=any name="price" size="500" required>
      </div>
      <input type="hidden" value="${item}" name="item"/>
      <input type="submit" value="Add Item" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom"/>
    </form>  
  </div>
  <div class="w3-container" id="contact" style="margin-top:75px">
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <form action="home.do">
      <button type="submit" class="w3-button w3-red w3-margin-bottom">Home</button>
    </form>  
  </div>
</body>
</html>
