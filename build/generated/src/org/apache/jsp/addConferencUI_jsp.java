package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class addConferencUI_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <form action=\"addConference.jsp\">\n");
      out.write("            Conference Name :<input type=\"text\" name=\"conferenceName\" value=\"\"><br>\n");
      out.write("            Chair ID :\n");
      out.write("                    ");

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_data", "root", "");
                        Statement stm=connection.createStatement();
                        ResultSet re = stm.executeQuery("select * from chair");
                    
      out.write("\n");
      out.write("                    <select name=\"chair\">\n");
      out.write("                        ");

                            while (re.next()) {
                                String un = re.getString(1);
                        
      out.write("\n");
      out.write("                            <option value=\"");
      out.print( un);
      out.write('"');
      out.write('>');
      out.print( un);
      out.write("</option>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </select><br>        \n");
      out.write("            Date :<input type=\"Date\" name=\"date\" value=\"\"><br>\n");
      out.write("            Time :<input type=\"Time\" name=\"time\" value=\"\"><br>\n");
      out.write("            venue :<input type=\"text\" name=\"venue\" value=\"\"><br>\n");
      out.write("            subject :<input type=\"text\" name=\"subject\" value=\"\"><br>         \n");
      out.write("            Seats :<input type=\"Number\" name=\"seats\" value=\"\"><br>           \n");
      out.write("            <input type=\"submit\"></input>\n");
      out.write("            \n");
      out.write("        </form>\n");
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
