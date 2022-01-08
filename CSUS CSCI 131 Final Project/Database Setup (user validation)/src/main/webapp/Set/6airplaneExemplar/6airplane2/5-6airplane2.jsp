<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Airplane 2 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/car2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/juice2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/window2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/shoes2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tomato2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/airplane2.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "4-6airplane2.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "6-6airplane2.jsp">
                    <input type =  "submit" id = "btn" value = "Next" /> 
	</P>
</body>
</html>