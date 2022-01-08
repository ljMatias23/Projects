<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title> Bird 1 </title>

    <style><%@include file="/css/testcss.css"%></style>
    <style><%@include file="/css/lightbox.min.css"%></style>
    <script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>

</head>
<body>
    <div class="gallery"> 
	<a data-lightbox="mygallery"><img src="gallery/bird1.jpg"></a>
	<a data-lightbox="mygallery"><img src="gallery/pencil1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/leaf1.jpg"></a>
    <a data-lightbox="mygallery"><img src="gallery/keys1.jpg"></a>
    </div>
    <br/>
    <P align=right>
    <a href = "2-4bird2.jsp">
                    <input type =  "submit" id = "btn" value = "Previous" />
    <a href = "4-4bird2.jsp">
                    <input type =  "submit" id = "btn" value = "Next" />
    </P>
</body>
</html>