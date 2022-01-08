<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Airplane 4 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/bear4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tomato4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/airplane4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/car4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/juice4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/window4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/shoes4.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "1-7airplane4.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "3-7airplane4.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>