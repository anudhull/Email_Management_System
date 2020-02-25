 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home</title>
        <style>
            td{
                text-align: center;
                background-color: #4dffff;
            }
            table
            {
                border-collapse: collapse;
            }
            
            body{
                background-color: whitesmoke;
            }
        </style>
    </head>
    <body link="#ff0000" alink="#ff0000" vlink="#ff0000">
        <%
        String eid=session.getAttribute("eid")+"";
        out.println("<h1 align=center style='color:blue'>Welcome  "+eid+"</h1>");
        %>
          
    <center><img src="email.jpg" width="30%" height="130"/>
    <img src="4.jpg" width="30%" height="130"/></center>
        <table border="1" width="100%" height="80px">
            <tr>
                <td><a href="Compose.jsp" target="this" ><h2>Compose</h2></a></td>
                <td><a href="Inbox.jsp" target="this" ><h2>Inbox</h2></a></td>
                <td><a href="Sent.jsp" target="this" ><h2>Sent</h2></a></td>
                <td><a href="ChangePassword.jsp" target="this" ><h2>Change Password</h2></a></td>
                <td><a href="SignOut.jsp" target="_parent" ><h2>Sign Out</h2></a></td>
            </tr>
        </table>
        <iframe name="this" height="400px" width="100%">
        </iframe>
    </body>
</html>
