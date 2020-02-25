<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compose Save</title>
    </head>
    <body>
        <%
        String feid=session.getAttribute("eid")+""; 
        String toeid,sub,msg,edt;
        toeid=request.getParameter("toeid");
        sub=request.getParameter("sub");
        msg=request.getParameter("msg");
        java.util.Date dt=new java.util.Date();
        int d,m,y;
        d=dt.getDate();
        m=dt.getMonth()+1;
        y=dt.getYear()+1900;
        edt=y+"-"+m+"-"+d;
        Connection con;
        java.sql.PreparedStatement pstm;
        try
                       {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailDB","root","dhullanu");
            pstm=con.prepareStatement("insert into Emails(EmailDate,FromEmailId,ToEmailId,Subject,Message) values(?,?,?,?,?)");
            pstm.setString(1,edt);
            pstm.setString(2,feid);
            pstm.setString(3,toeid);
            pstm.setString(4,sub);
            pstm.setString(5,msg);
            pstm.executeUpdate();
            out.println("Sent");
            con.close();
        }
        catch(Exception e)
                               {
            out.println(e.toString());
        }
        %>
    </body>
</html>
