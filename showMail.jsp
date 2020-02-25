 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Mail</title>
    </head>
    <body>
        <%
        int eno=Integer.parseInt(request.getParameter("eno"));
        int t=Integer.parseInt(request.getParameter("t"));
        Connection con;
        PreparedStatement pstm;
        ResultSet rs;
        try
            {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailDB","root","dhullanu");
            pstm=con.prepareStatement("select * from Emails where EnailNo=?");
            pstm.setInt(1,eno);
            rs=pstm.executeQuery();
            out.println("<table width='100%' border=1><tr><th>Email Date</th><th>From Email Id</th><th>Subject</th><th>Message</th></tr>");      
            rs.next();
           String edt,feid,sub,msg;
           edt=rs.getString(2);     
           feid=rs.getString(3);  
           sub=rs.getString(5);  
           msg=rs.getString(6);  
           out.println("<tr><td>"+edt+"</td><td>"+feid+"</td><td>"+sub+"</td><td>"+msg+"</td></tr></table>");
           out.println(t);  
        }
        catch(Exception e)
         {
            out.println(e.toString());
         }
        %>
    </body>
</html>
