<%-- 
    Document   : login
    Created on : Jan 29, 2020, 4:28:22 PM
    Author     : Manula Uluwatta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
                String email = request.getParameter("email");
                String password = request.getParameter("pass");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
                PreparedStatement pst = con.prepareStatement("Select * from user where email = ? and password = ? ");
                pst.setString(1, email);
                pst.setString(2, password);
                Boolean a=true;
                ResultSet rst = pst.executeQuery();

                while (rst.next()) {
                                if (rst.getString("userType").equals("admin")) {
                                    a=false;
                                    response.sendRedirect("adminDashBoad.jsp");
                                    session.setAttribute("type", "admin");
                                    session.setAttribute("name", email);

                                } else if(rst.getString("userType").equals("participant")) {
                                    a=false;
                                    response.sendRedirect("participantDashBoard.jsp");
                                    session.setAttribute("type", "participent");
                                    session.setAttribute("name", email);
                                }
                }
        
        %>
    </body>
</html>
