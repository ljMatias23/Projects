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
<div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/car1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/juice1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/boat1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/bear1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pizza1.jpg"></a> 
	<a data-lightbox="mygallery"><img src="gallery/bird1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/tomato1.jpg"></a>
    
    
        
    </div>
    <br/>
    <P align=right>
    <a href = "4-7Boat1.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "6-7Boat1.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>

</body>
</html>