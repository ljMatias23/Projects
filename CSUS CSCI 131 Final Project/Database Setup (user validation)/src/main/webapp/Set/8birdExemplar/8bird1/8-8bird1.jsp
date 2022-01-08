<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Bird 1 </title>

    <style><%@include file="/css/milesstyle.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>

</head>
<body>
<center>
    <div class="gallery">
	<a data-lightbox="mygallery"><img src="gallery/monkey1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/car1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/mirror1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/keys1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/bird1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pencil1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/shoes1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/leaf1.jpg"></a>
	</div>
	</center>
    <br/>
    <P align=center>
    <a href = "7-8bird1.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <P align=center>
	<a href = "chooseSet.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Set" />
	<a href = "8chooseExemplar.jsp">
                    <input type =  "submit" id = "btn" value = "Choose another Exemplar" />
	</P>
</body>
</html>