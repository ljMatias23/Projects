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
	<a data-lightbox="mygallery"><img src="gallery/pizza2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/apple2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/boat2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/lion2.jpg"></a>
    </div>
    </center>
    <br/>
    <P align=center>
    <a href = "1-4Boat2.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "3-4Boat2.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>

</body>
</html>