<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Bird 3 </title>

    <style><%@include file="/css/testcss.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>

</head>
<body>
    <div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/fruit6.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/bird5.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/lion7.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/fruit4.jpg"></a>
    </div>
    <br/>
    <P align=right>
    <a href = "1-4bird3.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "3-4bird3.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>
</body>
</html>