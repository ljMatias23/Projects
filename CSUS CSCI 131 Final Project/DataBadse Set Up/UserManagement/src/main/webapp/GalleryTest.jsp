	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style><%@include file="/css/testcss.css"%></style>
	<style><%@include file="/css/lightbox.min.css"%></style>
	<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
	
</head>
<body>

	<div class="gallery"> 
	<img src="<c:url value ="/src/main/webapp/gallery/pic4.jpg"/>">
	<a href="gallery/pic1.jpg"><img src="C:/usr/local/apache-tomcat-9.0.54/gallery" alt= "Image not found"/></a>
	<img src="gallery/smallpic2.jpg"/>
	<img src="<%=request.getContextPath()%>gallery/smallpic3.jpg">
	<img src="${pageContext.request.contextPath}/gallery/smallpic3.jpg"/>
	<a href="gallery/pic4.jpg" data-lightbox="mygallery"><img src="<c:url value ="gallery/smallpic4.jpg"/>"></a>
	<a href="gallery/pic5.jpg" data-lightbox="mygallery"><img src="gallery/smallpic5.jpg"></a>
	<a href="gallery/pic6.jpg" data-lightbox="mygallery"><img src="gallery/smallpic6.jpg"></a>
	</div>


</body>
</html>