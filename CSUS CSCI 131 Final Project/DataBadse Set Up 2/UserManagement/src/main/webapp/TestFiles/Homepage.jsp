<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home page</title>
    <style>
    <%@include file="/css/milesstyle.css"%></style>
  </head>
  <body>
    <html>  
      <head>  
          <title>Home page</title>  
          <link rel = "stylesheet" type = "text/css" href = "style.css">   
      </head>  
      <body>  
          <div id = "frm">  
              <h1>Welcome</h1>       
                <p> 
                  <a href = "Homepage.html">
                    <input type =  "submit" id = "btn" value = "Create Set" />  
                  </a>
                  
                  <a href = "chooseGallery.jsp">
                    <input type =  "submit" id = "btn" value = "Choose a set" />  
                    
                <a href = "Gallery.jsp">
                    <input type =  "submit" id = "btn" value = "View past sets" />  
                    
                  <a href="LoginPage.jsp">
                    Back to Login
                  </a> 
                </p>
              </form>  
          </div>   
      </body>     
      </html>  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>