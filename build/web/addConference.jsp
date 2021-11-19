<%-- 
    Document   : addConference
    Created on : Jan 29, 2020, 11:11:31 PM
    Author     : Manula Uluwatta
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
        <%
            String conferenceName=request.getParameter("conferenceName");
            int chair_id=Integer.parseInt(request.getParameter("chair"));
            String date=request.getParameter("date");
            String time=request.getParameter("time");
            String venue=request.getParameter("venue");      
            String subject=request.getParameter("subject");      
            String seats=request.getParameter("seats");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
            PreparedStatement stm=connection.prepareStatement("Insert into conference(chair_id,conferenceName,date,time,venue,subject,seats)values('"+chair_id+"','"+conferenceName+"','"+date+"','"+time+"','"+venue+"','"+subject+"','"+seats+"')");
            int rst=stm.executeUpdate();
            if(rst > 0){
                
            }
        %>
    </body>
</html>
