 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <style>
           .a{
                background-color: green;
                color: white;
                padding:3px 3px 3px 3px;
            }
        </style>
        <script>
            function isvalid()
            {
                b=document.getElementById("b").value;
                cnfp=document.getElementById("cnfp").value;
                if(b!=cnfp)
                    {
                    alert("Password Mismathed");
                return(false);
                    }
                else
                    return(true);
            }
            function UserAvailability()
            { 
                a=document.getElementById("a").value;
                if(a=="")
                {
                    document.getElementById("res").innerHTML="Enter EMail Id";
                    return;
                }
                x=new XMLHttpRequest();
                x.onreadystatechange=function()
                {
                       if(x.readyState==4 && x.status==200)
                        {
                        document.getElementById("res").innerHTML=x.responseText;
                        }
                }
                x.open("GET","checkUser.jsp?a="+a,true);
                x.send();
            }
            
            function strength()
            {
               str=document.form1.b.value.length;
               if(str>5)
                   msg='Good';
               else
                   msg='Poor';
               document.getElementById('mylocation').innerText=msg;
            }
        </script>
    </head>
    <body>
        <div style="padding: 20px 20px 20px 150px; border:2px solid blue; background-color:  #ff99ff; color:blue; margin-top: 0px; margin-left: 400px ;margin-right:350px;">
            <form method="post" action="RegisterSave" onsubmit="return(isvalid())" name="form1">
         Email id : <input type="email" name="a" id="a"/>   <input type="button" value="Check For Availability" onclick="UserAvailability()" /> <br/><span id=res></span> <br/><br/>
        Password  : <input type="password" name="b" id="b" onkeyup="strength()" />   Strength:  <span id="mylocation">No Strength</span> <br/><br/>
        Confirm Password  : <input type="password" name="cnfp" id="cnfp" /><br/><br/>
        User Name : <input type="text" name="c"/><br/><br/>
        Gender : <input type="radio" value="Male" name="d" />Male
        <input type="radio" value="Female" name="d" /> Female<br/><br/>
        Country :
        <select name="e">
            <option>India</option>
            <option>China</option>
            <option>Japan</option>
            <option>Pakistan</option>
            <option>Paris</option>
            <option>Australia</option>
            </select><br/><br/>
        <input type="submit" value="submit" class="a"/>
                </form>

        </div>
    </body>
</html>
