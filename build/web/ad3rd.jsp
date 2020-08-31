<%-- 
    Document   : ad2nd
    Created on : Apr 6, 2019, 10:45:53 PM
    Author     : Tanvir
--%>

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
                String one = ""; 
                String two = "";
                String three = "";
                String four = "";               
                String five = "";
                String six = "";
                String seven = ""; 

                if (request.getParameter("one") != null) {
                    one = request.getParameter("one");

                }
                if (request.getParameter("two") != null) {
                    two = request.getParameter("two");

                }
                if (request.getParameter("three") != null) {
                    three = request.getParameter("three");

                }
                
                if (request.getParameter("four") != null) {
                    four = request.getParameter("four");
                }

               if (request.getParameter("five") != null) {
                    five = request.getParameter("five");
                }
              if (request.getParameter("six") != null) {
                    six = request.getParameter("six");
                }if (request.getParameter("seven") != null) {
                    seven = request.getParameter("seven");
                }
              
                System.out.println("className.methodName() "+result);
            }
        %>


        <form name="myForm" action="3rd.jsp" method="POST">
            <table border="0">

                <tbody>
                    <tr>
                        <td>Day/Time</td>
                        <td><input type="text" name="one" value="" size="100" /></td>
                    </tr>
                    <tr>
                        <td>08.30-10.00 AM </td>
                        <td><input type="text" name="two" value="" size="100" /></td>
                    </tr>
                   <tr>
                        <td>10.00-11.30 AM </td>
                        <td><input type="text" name="three" value="" size="100" /></td>
                    </tr>
                    
                    <tr>
                        <td>11.30-01.00 AM </td>
                        <td><input type="text" name="four" value="" size="100" /></td>
                    </tr>
                     
                    <tr>
                        <td>01.00-02.30 PM </td>
                        <td><input type="text" name="five" value="" size="100" /></td>
                    </tr>
                    <tr>
                        <td>02.30-04.00 PM </td>
                        <td><input type="text" name="six" value="" size="100" /></td>
                    </tr>
                    <tr>
                        <td>04.00-05.30 PM </td>
                        <td><input type="text" name="seven" value="" size="100" /></td>
                    </tr>
                </tbody>
            </table>

            <input type="hidden" name="hidden" value="<%= result%>" />

            <input type="reset" value="clear" name="clear" />
            <input type="submit" value="submit" name="submit" />
        </form>
    </body>
</html>
