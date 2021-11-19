<%-- 
    Document   : addConferencUI
    Created on : Jan 29, 2020, 11:31:21 PM
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
         <form action="addConference.jsp">
            Conference Name :<input type="text" name="conferenceName" value=""><br>
            Chair ID :
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
                        Statement stm=connection.createStatement();
                        ResultSet re = stm.executeQuery("select * from chair");
                    %>
                    <select name="chair">
                        <%
                            while (re.next()) {
                                String un = re.getString(1);
                        %>
                            <option value="<%= un%>"><%= un%></option>
                        <%
                            }
                        %>
                    </select><br>        
            Date :<input type="Date" name="date" value=""><br>
            Time :<input type="Time" name="time" value=""><br>
            venue :<input type="text" name="venue" value=""><br>
            subject :<input type="text" name="subject" value=""><br>         
            Seats :<input type="Number" name="seats" value=""><br>           
            <input type="submit"></input>
            
        </form>
    </body>
</html>
