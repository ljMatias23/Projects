<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Test Image Gallery </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
<h1> Image Gallery Design </h1>
	<div class="gallery"> 
	<a href="gallery/pic5.jpg" data-lightbox="mygallery"><img src="gallery/ball5.jpg"></a>
	<a href="gallery/pic1.jpg" data-lightbox="mygallery"><img src="gallery/ball1.jpg"></a>
	<a href="gallery/pic2.jpg" data-lightbox="mygallery"><img src="gallery/ball2.jpg"></a>
	<a href="gallery/pic3.jpg" data-lightbox="mygallery"><img src="gallery/ball3.jpg"></a>
	<a href="gallery/pic4.jpg" data-lightbox="mygallery"><img src="gallery/ball4.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "5GalleryBall1.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "5GalleryBall3.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>