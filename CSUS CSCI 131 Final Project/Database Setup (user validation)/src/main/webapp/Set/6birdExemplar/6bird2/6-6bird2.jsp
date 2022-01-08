<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Bird 2 </title>

    <style><%@include file="/css/testcss.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>

</head>
<body>
    <div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/pencil2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/leaf2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/car2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/mirror2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/keys2.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/bird2.jpg"></a>
    <br/>
    <P align=right>
    <a href = "5-6bird2.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    </P>
	<br/>
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