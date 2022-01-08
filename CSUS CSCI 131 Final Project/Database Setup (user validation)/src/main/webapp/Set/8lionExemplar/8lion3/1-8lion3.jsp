<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Lion 3 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/lion3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/apple3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/monkey3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/hat3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/grapes3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/squirrel3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/milk3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pen3.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "8chooseExemplarLion.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "2-8lion3.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>