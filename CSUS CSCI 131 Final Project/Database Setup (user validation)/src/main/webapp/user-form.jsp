<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>AddUser/Register</title>
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
				<a href="Login.jsp" class="navbar-brand"> ALKALM </a>
			</div>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post"></form>
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Register
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.username}' />" class="form-control"
						name="username" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Password</label> <input type="text"
						value="<c:out value='${user.password}' />" class="form-control"
						name="password">
				</fieldset>

                 <fieldset class="form-group">
					<label>User Role (Please enter User or Admin)</label> <input type="text"
						value="<c:out value='${user.role}' />" class="form-control"
						name="role">
				</fieldset>
                <button type="submit" class="btn btn-success">Save</button>
				<a href="Login.jsp"> Back To Login </a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>