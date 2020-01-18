
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Baby<br>Share</b></h3>
  </div>
  <div class="w3-bar-block">
    <a href="AllItems.do" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">See All Items</a> 
    <a href="Search.do" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Search for Items</a> 
    <a href="Create.do" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Add an Item</a> 
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Baby Share</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
    <h1><b><svg width="500" height="200" viewBox="0 -20 500 200" preserveAspectRatio="none">
    <path id="curve" d="M73.2,148.6c4-6.1,65.5-96.8,178.6-95.6c111.3,1.2,170.8,90.3,175.1,97" />
    <text width="500">
      <textPath xlink:href="#curve">
        Baby Share!
      </textPath>
    </text>
  </svg></b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
  <img src="http://pngimg.com/uploads/baby/baby_PNG51739.png" style="height: 582px; position: relative; top: -202px; left: -16px"/>
  </body>
</html>
  