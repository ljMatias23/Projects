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
	<a href="gallery/pic1.jpg" data-lightbox="mygallery"><img src="gallery/smallpic1.jpg"></a>
	<a href="gallery/pic2.jpg" data-lightbox="mygallery"><img src="gallery/smallpic2.jpg"></a>
	<a href="gallery/pic3.jpg" data-lightbox="mygallery"><img src="gallery/smallpic3.jpg"></a>
	<a href="gallery/pic4.jpg" data-lightbox="mygallery"><img src="gallery/smallpic4.jpg"></a>
	<a href="gallery/pic5.jpg" data-lightbox="mygallery"><img src="gallery/smallpic5.jpg"></a>
	<a href="gallery/pic6.jpg" data-lightbox="mygallery"><img src="gallery/smallpic6.jpg"></a>
	</div>
</body>
</html>