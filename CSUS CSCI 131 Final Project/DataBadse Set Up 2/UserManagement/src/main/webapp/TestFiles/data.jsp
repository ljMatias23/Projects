<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
 <table border="1">
 <tr><th>Name</th><th>Address</th><th>Image</th></tr>
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    Statement stmt=con.createStatement();
    String strQuery = "select * from data";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
      <td><%=rs.getString("name")%></td><td><%=rs.getString("address")%></td>
      <td align="center">

<img src="image.jsp?imgid=<%=rs.getInt(1)%>" width="50" height="50">
</a></td>
      </tr>
      <%
    }
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
 </table>
</HTML>