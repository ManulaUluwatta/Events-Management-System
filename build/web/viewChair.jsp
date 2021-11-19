<%-- 
    Document   : viewChair
    Created on : Jan 30, 2020, 1:28:20 AM
    Author     : Manula Uluwatta
--%>

<%@page import="java.sql.ResultSet"%>
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
         <table border="1">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
            Statement stm=con.createStatement();
            String sql="select * from chair";
            ResultSet rst=stm.executeQuery(sql);
            while(rst.next()){
                
        %>
        <tr>
            <td><% out.println(rst.getString("chair_id")); %><td>
            <td><% out.println(rst.getString("chair_name")); %><td>
            <td><% out.println(rst.getString("contact")); %><td>
            <td><% out.println(rst.getString("email")); %><td>
            <td><% out.println(rst.getString("designation")); %><td>
        
        </tr>
        <%}%>
            </table>
    </body>
</html>
