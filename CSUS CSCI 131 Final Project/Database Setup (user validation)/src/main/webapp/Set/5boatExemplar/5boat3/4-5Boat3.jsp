<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sail Boat</title>
	<style><%@include file="/css/milesstyle.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
</head>
<body>
<center>
<div class="gallery"> 
    <a data-lightbox="mygallery"><img src="gallery/boat3.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/pizza3.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/tomato3.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/car3.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/juice3.jpg"></a>
    </div>
    </center>
    <br/>
    <P align=center>
    <a href = "3-5Boat3.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "5-5Boat3.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>

</body>
</html>