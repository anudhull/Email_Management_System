 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
        function showform()
        {
            var data="<br/><br/>Name:<input type='text' name='name' required><br/><br/>Complaint:<br> <textarea rows='5' cols='80' required></textarea> <br/><br/><br/><input type='submit' value='Register Complaint' onclick='ok()'>";
            document.getElementById('mylocation').innerHTML=data;   
        } 
        function ok()
        {
            alert('Thanks. We will try to solve it soon.');
        }
        </script>
        <style>
             .a{
                background-color: green;
                color: white;
                padding:3px 3px 3px 3px;
            }
            body
            {
                background-color:  #80ffff;
            }
        </style>
    </head>
    <body>
    <center>
        <br/><br/><br/>
        <h3>Corporate Office</h3>
        <pre>

    AdorableMail Pvt. Ltd.
  A K R Tech Park - B Block
 Krishna Reddy Industrial Area
     7th Mile, Kudlu Gate
      Bangalore - 560068
        </pre>
        <br/><br/><br/>
        <form name="myForm">  
        <input type="button" value="Want to Complain" class="a" onclick="showform()">
        <div id="mylocation">
        </div> 
        </form> 
    </center>
    </body>
</html>
