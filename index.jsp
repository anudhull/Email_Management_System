
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email</title>
        <style>
            td{
                text-align:center;
                
            }
            table
            { 
                background-color: red;
            }
            body{
                background-color: whitesmoke;
            }
            .head
            {
                text-align: center;
                color:blueviolet;
                font-style:  oblique;
            }
        </style>
    </head>
    <body link="white" alink="white" vlink="white">
    <h2 class="head">Welcome to AdorableMail.com</h2>
    <center><img src="1.jpg" height="130" width=30% />
        <img src="2.jpg" height="130" width=30% />
        <img src="3.jpg" height="130" width=30% />
    </center>
        <table width="100%" height="40px" >
            <tr>
                <td><a href="Login.jsp" target="this"><h2>Login</h2></a></td>
                <td><a href="Register.jsp" target="this"><h2>Register</h2></a></td>
                <td><a href="AboutUs.jsp" target="_parent"><h2>About Us</h2></a></td>
                <td><a href="ContactUs.jsp" target="_parent"><h2>Contact Us</h2></a></td>
            </tr>
        </table>
        <iframe width=100% height="400px" name="this" />
        </iframe>
    </body>
</html>
