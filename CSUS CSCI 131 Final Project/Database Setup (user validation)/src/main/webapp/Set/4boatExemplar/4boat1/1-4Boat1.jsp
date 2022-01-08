<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boat</title>
	<style><%@include file="/css/milesstyle.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
</head>
<body>
<center>
<div class="gallery"> 
    <a data-lightbox="mygallery"><img src="gallery/apple1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/boat1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/lion1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/pizza1.jpg"></a>
    </div>
    </center>
    <br/>
    <P align=center>
    <a href = "4chooseExemplar.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" /> 
    <a href = "2-4Boat1.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>

</body>
</html>