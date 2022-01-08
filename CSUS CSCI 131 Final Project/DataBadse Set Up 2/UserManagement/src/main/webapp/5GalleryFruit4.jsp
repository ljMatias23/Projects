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
	<a data-lightbox="mygallery"><img src="gallery/fruit3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/fruit4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/fruit5.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/fruit1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/fruit2.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "5GalleryFruit3.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "5GalleryFruit5.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>