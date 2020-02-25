 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Mail</title>
    </head>
    <body>
       <%
       Connection con;
       PreparedStatement pstm;
       String eno[]=request.getParameterValues("cb");
       int i,l,en;
       try
           {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailDB","root","dhullanu");
           l=eno.length;
           for(i=0;i<l;i++)
           {
            en=Integer.parseInt(eno[i]);
            pstm=con.prepareStatement("Delete from Emails where EmailNo=?");
            pstm.setInt(1,en);
            pstm.executeUpdate();
            out.println(en+"  Email Deleted<br/>");                                     
           }
           con.close();
       }
       catch(Exception e)
                             {
           out.println(e.toString());
       }
       %>
    </body>
</html>
