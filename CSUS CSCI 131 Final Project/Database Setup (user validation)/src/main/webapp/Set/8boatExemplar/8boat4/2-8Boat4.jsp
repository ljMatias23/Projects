<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sail Boat</title>
	<style><%@include file="/css/testcss.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
</head>
<body>
<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/bear4.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/tv4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/car4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/juice4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/boat4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/pizza4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/tomato4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/bird4.jpg"></a>
    
    
    
    </div>
    <br/>
    <P align=right>
    <a href = "1-8Boat4.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "3-8Boat4.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>

</body>
</html>