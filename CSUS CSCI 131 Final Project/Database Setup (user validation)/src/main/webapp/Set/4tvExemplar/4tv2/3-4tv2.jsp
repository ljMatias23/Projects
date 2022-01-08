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
	<a data-lightbox="mygallery"><img src="gallery/tomato.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/yogurt.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tv2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/strawberry.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "2-4tv2.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "4-4tv2.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>