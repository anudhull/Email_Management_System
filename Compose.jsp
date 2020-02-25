 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .a
            {
                background-color: green;
                color:white;
                padding:5px 5px 5px 5px;
            }
        </style>
        <title>Compose</title>
    </head>
    <body>
        <div style=" border:1px solid blue; background-color: lightblue; text-align:center">
        <form method="post" action="ComposeSave.jsp" target="_parent"><br/>
            <b>To </b><input type="email" name="toeid" required/><br/><br/>
            <b>Subject </b><input type="text" name="sub" required/><br/><br/>
            <b>Message </b><br/><textarea rows="15" cols="25" name="msg">
            </textarea><br/><br/>
            <input type="submit" value="Send" class="a"/>
        </form>
        </div>
    </body>
</html>
