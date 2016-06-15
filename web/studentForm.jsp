<%-- 
    Document   : studentForm
    Created on : Jun 15, 2016, 8:36:00 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.login.entities.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Student form!</h1>
       
       <% 
        User verifiedUser =(User)session.getAttribute("verifiedUser");
        if(verifiedUser== null){
       %>
       
        <form  >
            First name:  <input type="text" name="first_name"  />
            Last name:   <input type="text" name="last_name" />
            <br>
            Address:  <input type="text" name="address" />
            <br>
            Roll No.:    <input type="text" name="roll_no"  />
            <br>
            Year/Part:   <input type="text" name="year/part"  />
            <br>
            Program:     <input type="text" name="program"  />
            <br>
        </form>
        <%
        } else {    
            response.sendRedirect("log_in.jsp");
        }
        %>
           
    </body>
</html>
