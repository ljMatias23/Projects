<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> TV 3 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/tv3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/shoes3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/iceCream3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tree3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pizza3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/sandwich3.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "6chooseExemplarTv.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "2-6tv3.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>