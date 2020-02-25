 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inbox</title>
        <style>
            td{
                text-align: center;
                padding: 5px 5px 5px 5px;
            }
            table
            {
                border-color: blueviolet;
            }
            .a
            {
                background-color: green;
                color: white;
                padding:5px 5px 5px 5px;
            }
        </style>
    </head>
    <body>
        
        <%
        String feid=session.getAttribute("eid")+"";
        String edt,toeid,sub,msg;
        int eno;
        Connection con;
        PreparedStatement pstm;
        ResultSet rs;
        try
            {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailDB","root","dhullanu");
            pstm=con.prepareStatement("select * from Emails where FromEmailId=?");
            pstm.setString(1,feid);
            rs=pstm.executeQuery();
            out.println("<form method=post action=DelMail.jsp>");
            out.println("<table border=1 width=100% ><tr><th>Check</th><th>From Email Id</th><th>Subject</th><th>Email Date</th></tr>");
            while(rs.next())
                               {
                eno=rs.getInt(1);
                edt=rs.getString(2);
                feid=rs.getString(3);
                sub=rs.getString(5);
                msg=rs.getString(6);
                out.println("<tr><td><input type=checkbox name=cb value="+eno+"></td><td>"+feid+"</td><td><a href=showMail.jsp?eno="+eno+">"+sub+"</a></td><td>"+edt+"</td></tr>");
            }
            out.println("</table>");
            out.println("<br/><input type=submit value=Delete class=a>");
            out.println("</form>");
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
