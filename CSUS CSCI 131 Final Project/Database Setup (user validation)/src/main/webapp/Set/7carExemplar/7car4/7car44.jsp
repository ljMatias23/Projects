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
    <a data-lightbox="mygallery"><img src="gallery/tomato/tomato4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/shoes/shoes4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/key/key4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/pizza/pizza4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/juice/juice4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/rice/rice4.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/car/car4.jpg"></a>
    </div>
    <br/>
   <P align=right>
    <a href = "7car43.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "7car45.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>
</body>
</html>