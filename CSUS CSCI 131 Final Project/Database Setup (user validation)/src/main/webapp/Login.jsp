<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
    <body>
        <header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a href="https://github.com/ljmatias/ALKALM" class="navbar-brand"> ALKALM </a>
			</div>
		</nav>
	   </header>
	   <h3 class="text-center">  Login </h3>
        <form name="form" action="<%=request.getContextPath()%>/LoginServlet" method="post">
        <table align="center">
        <tr>
        <td>Username</td>
        <td><input type="text" name="username" /></td>
        </tr>
        <tr>
        <td>Password</td>
        <td><input type="text" name="password" /></td>
        </tr>
        <tr>
        <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
        </tr>
        <td></td>
        <td><input type="submit" value="Login"></input><input type="reset" value="Reset"></td>
        </tr>
        </table>
        </form>
    </body>
</html>