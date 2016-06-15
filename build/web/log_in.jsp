<%-- 
    Document   : log_in
    Created on : Jun 15, 2016, 7:53:39 AM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LogIn</h1>
        <form action="UserServlet" method="post">
            <div>
                <input class="form-control"  type="text" id="userName" name="userName" placeholder="UserName">
            </div> <br>
            <div>
                <input class="form-control"  type="password" id="userPassword" name="userPassword" placeholder="password">   
            </div>   <br>
             <div>
              <input class="form-control"  type="submit" class="button" id="btn" value="login">   
            </div>
        </form>
    </body>
</html>
