<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> TV 1 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/shoes1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/iceCream1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tree1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pizza1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/sandwich1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/horse1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tv1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/cow1.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "6-8tv1.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "8-8tv1.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>