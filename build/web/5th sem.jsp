<%-- 
    Document   : 3rd sem
    Created on : Apr 6, 2019, 11:36:58 PM
    Author     : Tanvir
--%>

<%@page import="java.sql.ResultSet"%>
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
      
        <h1>5th Semester</h1>
       
        <table border="1"> 
            <tr style="color: black;">
                <td>Day/Time</td>
                     <td>08.30-10.00 AM</td>
                          <td>10.00-11.30 AM</td>
                           <td>11.30-01.00 AM</td>
                           <td>01.00-02.30 PM</td>
                          <td>02.30-04.00 PM</td>
                           <td>04.00-05.30 PM</td>
            </tr>
       
        
        <%
           
            ResultSet rs=null;
            try{
            
                Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/routine","root","");
                    Statement st =  con.createStatement();
                    
                   String qry="select * from classrotine4";
                   
                    rs=st.executeQuery(qry);
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                            
                <td><%= rs.getString(1)%> </td>
                <td><%= rs.getString(2)%> </td>
                <td><%= rs.getString(3)%> </td>
                <td><%= rs.getString(4)%> </td>
                 <td><%= rs.getString(5)%> </td>
                <td><%= rs.getString(6)%> </td>
                <td><%= rs.getString(7)%> </td>
                        </tr>  
                         
                        <%}
                        
          }catch(Exception ex){}
            %>
        
         </table>
    </body>
    </body>
</html>

