<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<<<<<<< HEAD
<head>
<title>Login</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<h1></h1>
<html>
<head>
<title>PHP login system</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a href="LoginPage.jsp" class="navbar-brand"> ALKALM </a>
			</div>
		</nav>
	</header>
	<form action="<%=request.getContextPath()%>/validate" method="post">
		<table style="with: 100%">
			<tr>
				<td>ID</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>

		</table>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>
</body>
=======
  <head>
    <title>Login</title>
    
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
  </head>
  <body>

    <h1></h1>

    <html>  
      <head>  
          <title>PHP login system</title>  
          <link rel = "stylesheet" type = "text/css" href = "style.css">   
      </head>  
      <body> 
      <header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Alkalm WebServer </a>
			</div>
		</nav>
	</header>   
                <br>
				<div class="container col-md-5">
					<div class="card">
						<div class="card-body">
							<c:if test="${user != null}">
								<form action="update" method="post">
							</c:if>
							<c:if test="${user == null}">
								<form action="insert" method="post">
							</c:if>
			
							<caption>
								<h2>
									<c:if test="${user != null}">
			            			Login
			            		</c:if>
									<c:if test="${user == null}">
			            			Login
			            		</c:if>
								</h2>
							</caption>
			
							<c:if test="${user != null}">
								<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
							</c:if>
			
							<fieldset class="form-group">
								<label>User Name</label> <input type="text"
									value="<c:out value='${user.name}' />" class="form-control"
									name="name" required="required">
							</fieldset>
		
							<fieldset class="form-group">
								<label>User Password</label> <input type="text"
									value="<c:out value='${user.password}' />" class="form-control"
									name="password" required = "required">
							</fieldset>
			
							<button type="submit" class="btn btn-success">Login</button>
							<a href="user-form.jsp" > Create an Account  </a>
							</form>
              		</form>  
          </div>  
          <script>  
          
                  function validation()  
                  {  
                      var id=document.f1.user.value;  
                      var ps=document.f1.pass.value;  
                      if(id.length=="" && ps.length=="") {  
                          alert("User Name and Password fields are empty");  
                          return false;  
                      }  
                      else  
                      {  
                          if(id.length=="") {  
                              alert("User Name is empty");  
                              return false;  
                          }   
                          if (ps.length=="") {  
                          alert("Password field is empty");  
                          return false;  
                          }  
                      }                             
                  }  
              </script>  
      </body>     
      </html>  
  </body>
>>>>>>> e9437c3a41e02cada595c34c2df2c782f9cf1164
</html>
