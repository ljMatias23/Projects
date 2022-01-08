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
	<a data-lightbox="mygallery"><img src="gallery/smallpic1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/smallpic2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/smallpic3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/smallpic4.jpg"></a>
	<br/>
	<P = align=right>
	
	<a href = "4Gallery1.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />  
    </a>
    </P>
	</div>
</body>
</html>