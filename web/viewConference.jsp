<%-- 
    Document   : viewConference
    Created on : Jan 30, 2020, 2:49:50 AM
    Author     : Manula Uluwatta
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="1">
             <tr>
                 <td>Speaker Name<td>
                 <td>Email<td>
                 <td>Conference Name<td>
                 <td>Date<td>
                 <td>Time<td>
                 <td>Venue<td>
                 <td>Subject<td>
                 <td>Seats<td>
             </tr>
             
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
            Statement stm=con.createStatement();
            String sql="select chair_name,s.email,conferenceName,date,time,venue,subject,seats from conference c,chair s where c.chair_id=s.chair_id";
            ResultSet rst=stm.executeQuery(sql);
            while(rst.next()){
                
        %>
        <tr>
            <td><% out.println(rst.getString("chair_name")); %><td>
            <td><% out.println(rst.getString("email")); %><td>
            <td><% out.println(rst.getString("conferenceName")); %><td>
            <td><% out.println(rst.getString("date")); %><td>
            <td><% out.println(rst.getString("time")); %><td>
            <td><% out.println(rst.getString("venue")); %><td>
            <td><% out.println(rst.getString("subject")); %><td>
            <td><% out.println(rst.getString("seats")); %><td>
        
        </tr>
        <%}%>
            </table>
    </body>
</html>
