 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check User</title>
    </head>
    <body>
        <%
         String a=request.getParameter("a");
         Connection con;
         PreparedStatement pstm;
         ResultSet rs;
         try
              {
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailDB","root","dhullanu");
             pstm=con.prepareStatement("select * from Users where EmailId=?");
             pstm.setString(1,a);
             rs=pstm.executeQuery();
       
             if(rs.next())
                 out.println("Already exist. Enter new one");
             else
                 out.println("Available");
             rs.close();
             con.close();
               
                }
         catch(Exception e)
                                 {
             out.println(e.toString());
         }
        %>
    </body>
</html>
