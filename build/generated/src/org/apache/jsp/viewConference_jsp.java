package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class viewConference_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <table border=\"1\">\n");
      out.write("             <tr>\n");
      out.write("                 <td>Speaker Name<td>\n");
      out.write("                 <td>Email<td>\n");
      out.write("                 <td>Conference Name<td>\n");
      out.write("                 <td>Date<td>\n");
      out.write("                 <td>Time<td>\n");
      out.write("                 <td>Venue<td>\n");
      out.write("                 <td>Subject<td>\n");
      out.write("                 <td>Seats<td>\n");
      out.write("             </tr>\n");
      out.write("             \n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
            Statement stm=con.createStatement();
            String sql="select chair_name,s.email,conferenceName,date,time,venue,subject,seats from conference c,chair s where c.chair_id=s.chair_id";
            ResultSet rst=stm.executeQuery(sql);
            while(rst.next()){
                
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>");
 out.println(rst.getString("chair_name")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("email")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("conferenceName")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("date")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("time")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("venue")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("subject")); 
      out.write("<td>\n");
      out.write("            <td>");
 out.println(rst.getString("seats")); 
      out.write("<td>\n");
      out.write("        \n");
      out.write("        </tr>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
