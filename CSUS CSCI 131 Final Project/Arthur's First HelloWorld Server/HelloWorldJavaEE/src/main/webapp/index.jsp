<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java EE Hello World</title>
</head>
<body>
	<center>
	<h1>Hello Java EE World!</h1>
	<h2>WELCOME TO ALKALM's HOMEPAGE!</h2>
		<form action= "helloServlet" method="post">
			Enter your ID Number: <input type="text" name="number" size="10" />
			Enter your name: <input type="text" name="yourName" size="10" />
			Enter your password: <input type="text" name="yourPassword" size="15"/>
			<input type="submit" value="Call Servlet">
		</form>
	</center>
</body>
</html>