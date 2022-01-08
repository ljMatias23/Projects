<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> TV 2 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/shoes2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/iceCream2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tree2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pizza2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/sandwich2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/horse2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tv2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/cow2.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "6-8tv2.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "8-8tv2.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>