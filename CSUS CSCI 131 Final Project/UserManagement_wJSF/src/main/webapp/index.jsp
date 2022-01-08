<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<title> Test Image Gallery </title>

<link rel="stylesheet"
	type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link rel="stylesheet" type="text/css" href="css/testcss.css">
	<link rel="stylesheet" type="text/css" href="css/lightbox.min.css">
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
</head>
<body>
<h1> Image Gallery Design </h1>

	<div class="gallery">
	<a href="gallery/pic1.jpg" data-lightbox="mygallery"><img src="gallery/smallpic1.jpg"></a>
	<a href="gallery/pic2.jpg" data-lightbox="mygallery"><img src="gallery/smallpic2.jpg"></a>
	<a href="gallery/pic3.jpg" data-lightbox="mygallery"><img src="gallery/smallpic3.jpg"></a>
	<a href="gallery/pic4.jpg" data-lightbox="mygallery"><img src="gallery/smallpic4.jpg"></a>
	<a href="gallery/pic5.jpg" data-lightbox="mygallery"><img src="gallery/smallpic5.jpg"></a>
	<a href="gallery/pic6.jpg" data-lightbox="mygallery"><img src="gallery/smallpic6.jpg"></a>
	</div>
	
</body>
</html>