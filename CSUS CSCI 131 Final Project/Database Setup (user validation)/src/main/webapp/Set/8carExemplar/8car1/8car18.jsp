<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Car </title>

    <style><%@include file="/css/testcss.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>

</head>
<body>
    <div class="gallery">
    <a data-lightbox="mygallery"><img src="gallery/key/key1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/shoes/shoes1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/rice/rice1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/tomato/tomato1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/pizza/pizza1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/juice/juice1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/car/car1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/mirror/mirror1.jpg"></a>
    </div>
    <br/>
    <P align=right>
		<a href = "8car17.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Previous" />   
	</P>
    <br/>
	<P align=center>
	<a href = "chooseSet.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Choose another Set" />  
	<a href = "8chooseTarget.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Choose another Target" />  
	<a href = "8chooseExemplarCar.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Choose another Exemplar" />  
	</P>
</body>
</html>