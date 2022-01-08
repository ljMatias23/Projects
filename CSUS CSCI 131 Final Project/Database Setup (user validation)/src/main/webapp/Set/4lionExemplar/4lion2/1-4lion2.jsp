<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Lion 2 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/apple2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/lion2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/grapes2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pen2.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "4chooseExemplarLion.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />  
	<a href = "2-4lion2.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
	</P>
</body>
</html>