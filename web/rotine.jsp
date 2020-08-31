<%-- 
    Document   : rotine
    Created on : Apr 5, 2019, 4:57:59 PM
    Author     : Tanvir
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
        <%
            int result = 0;

            if (request.getParameter("submit") != null) {
                String Name = ""; 
                String ID = "";
                String Email = "";
                String semester = "";               
                

                if (request.getParameter("Name") != null) {
                    Name = request.getParameter("Name");

                }
                if (request.getParameter("ID") != null) {
                    ID = request.getParameter("ID");

                }
                if (request.getParameter("Email") != null) {
                    Email = request.getParameter("Email");

                }
                
                if (request.getParameter("semester") != null) {
                    semester = request.getParameter("semester");
                }

               
              
              
                System.out.println("className.methodName() "+result);
            }
        %>


        <form name="myForm" action="index.jsp" method="POST">
            <table border="0">

                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="Name" value="" size="100" /></td>
                    </tr>
                    <tr>
                        <td>ID </td>
                        <td><input type="text" name="ID" value="" size="100" /></td>
                    </tr>
                   
                     
                    
                </tbody>
            </table>

            <input type="hidden" name="hidden" value="<%= result%>" />

            <input type="reset" value="clear" name="clear" />
            <input type="submit" value="submit" name="submit" />
        </form>
</html>
