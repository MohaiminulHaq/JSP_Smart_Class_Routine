<%-- 
    Document   : login
    Created on : Aug 4, 2018, 4:43:00 PM
    Author     : tanvir
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

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
     <%@ page import ="java.sql.*" %>
            
    <%
    String name = request.getParameter("Name");    
    String id = request.getParameter("ID");
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/routine","root","");
          
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from registration1 where Name='" + name + "' and ID='" + id + "'");
    if (rs.next()) {
        session.setAttribute("Name", name);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("classr.html");
    } else {
        out.println("Invalid password <a href='index.html'>try again</a>");
    }
%>
    </body>
</html>

     
