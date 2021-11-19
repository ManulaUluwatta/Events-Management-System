<%-- 
    Document   : registerParticipant
    Created on : Jan 29, 2020, 11:06:24 PM
    Author     : Manula Uluwatta
--%>

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
             String participantName=request.getParameter("participantName");
            int contact=Integer.parseInt(request.getParameter("contact"));
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String userType=request.getParameter("userType");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
            Statement stm=connection.createStatement();
            String sql="Insert into participant(participant_name,contact,email,password,userType)values('"+participantName+"','"+contact+"','"+email+"','"+password+"','"+userType+"')";
            int rst=stm.executeUpdate(sql);
            if(rst > 0){
                
            }
        %>
    </body>
</html>
