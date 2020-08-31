<%-- 
    Document   : 2nd
    Created on : Apr 6, 2019, 11:18:25 PM
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
           
                String one = request.getParameter("Day/Time");
                String two = request.getParameter("two");
                String three = request.getParameter("three");
                String four = request.getParameter("four");
                String five = request.getParameter("five");
                String six = request.getParameter("six");
                String seven = request.getParameter("seven");
              
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/routine","root","");
                    Statement st =  con.createStatement();
                   int i=st.executeUpdate("insert into classrotine10(one,two,three,four,five,six,seven) values ('"+one+"','"+two+"','"+three+"','"+four+"','"+five+"','"+six+"','"+seven+"')");
                
             
               out.println("data is inserted");
                }catch(Exception e){
                    out.println(e);
                    e.printStackTrace();
                }

    
          %><h1>Hello World!</h1>
    </body>
</html>
