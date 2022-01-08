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
    <a data-lightbox="mygallery"><img src="gallery/juice/juice2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/rice/rice2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/mirror/mirror2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/car/car2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/key/key2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/shoes/shoes2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/pizza/pizza2.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/tomato/tomato2.jpg"></a>
    </div>
    <br/>
   <P align=right>
    <a href = "8car21.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "8car23.jsp"></a>
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>
</body>
</html>