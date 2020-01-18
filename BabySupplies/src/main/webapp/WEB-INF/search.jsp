<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<title>Search</title>
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
<body>
<div class="w3-container" id="contact" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Search Inventory</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p>Search our inventory for your baby needs!</p>
    <form action="ItemsByKeyword.do">
      <div class="w3-section">
        <label>Enter Keyword</label>
        <input class="w3-input w3-border" type="text" name="keyword" required>
      </div>
      <button type="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Search</button>
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