 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            td{
                text-align:center;
                padding:20px 20px 20px 20px;
            }
            .b
            {
                background-color: green;
                color:white;
            }
           
        </style>
        <title>login</title>
    </head>
    <body>
        <form method="post" action="LoginCheck" target="_parent">
            <table align="center" border="2" style="margin-top:100px; background-color: #ffffb3">
                <tr>
                <td>Email Id</td>
                <td><input type="text" name="eid" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pwd" /></td>
            </tr>
            <tr>
                <td  colspan="2"><input type="submit" value="submit"  class="b"/></td>
            </tr>
            </table>
        </form>
    </body>
</html>
