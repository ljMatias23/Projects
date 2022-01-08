<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Lion 1 </title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>
	<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/pen1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/monkey1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/apple1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/lion1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/grapes1.jpg"></a>
	</div>
	<br/>
	<P align=right>
	<a href = "4-5lion1.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" /> 
	</P>		
	<br/>
	<P align=center>
	<a href = "chooseSet.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Set" />  
	<a href = "5chooseTarget.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Target" />  
	<a href = "5chooseExemplarLion.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Exemplar" />  
	</P>
</body>
</html>