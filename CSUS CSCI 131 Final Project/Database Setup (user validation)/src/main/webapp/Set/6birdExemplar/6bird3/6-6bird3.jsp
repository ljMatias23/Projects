<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Bird 3 </title>

    <style><%@include file="/css/testcss.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>

</head>
<body>
    <div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/car3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/mirror3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/keys3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/bird3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pencil3.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/leaf3.jpg"></a>
    <br/>
    <P align=right>
    <a href = "5-6bird3.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <P align=center>
	<a href = "chooseSet.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Set" />
	<a href = "6chooseTarget.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Target" />
	<a href = "6chooseExemplarBird.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Exemplar" />
	</P>
</body>
</html>