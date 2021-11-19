<%-- 
    Document   : register.jsp
    Created on : Jan 29, 2020, 5:02:04 PM
    Author     : Manula Uluwatta
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String email=request.getParameter("email");
                String password=request.getParameter("password");
                String userType=request.getParameter("userType");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
                Statement stm=con.createStatement();
                String sql="insert into user values('"+email+"','"+password+"','"+userType+"')";
                int result=stm.executeUpdate(sql);
                if(result > 0){
                    response.sendRedirect("index_1.html");
                }
           
 
        %>
    </body>
</html>
