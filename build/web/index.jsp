

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserting Data Into A DB</title>
    </head>
    <body >
        
       
        <%
           
                String name = request.getParameter("Name");
                String id = request.getParameter("ID");
                String semester = request.getParameter("Semester");
                String email = request.getParameter("Email");
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/routine","root","");
                    Statement st =  con.createStatement();
                    st.executeUpdate("insert into registration1(Name,ID,semester,Email) values ('"+name+"','"+id+"','"+semester+"','"+email+"')");
                
             
               out.println("data is inserted");
                }catch(Exception e){
                    out.println(e);
                }
                

    
          %>
       
    </body>
</html>
