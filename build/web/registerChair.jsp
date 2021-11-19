<%-- 
    Document   : registerChair
    Created on : Jan 29, 2020, 10:15:13 PM
    Author     : Manula Uluwatta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
            String chairName=request.getParameter("chairName");
            int contact=Integer.parseInt(request.getParameter("contact"));
            String email=request.getParameter("email");
            String designation=request.getParameter("designation");
            String password=request.getParameter("password");
            String userType=request.getParameter("userType");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
            Statement stm=connection.createStatement();
            String sql="Insert into chair(chair_name,contact,email,designation,password,userType)values('"+chairName+"','"+contact+"','"+email+"','"+designation+"','"+password+"','"+userType+"')";
            int rst=stm.executeUpdate(sql);
            if(rst > 0){
                
            }
        %>
       
    </body>
</html>
