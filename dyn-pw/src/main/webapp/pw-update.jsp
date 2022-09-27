<%@ page import="java.util.*"%>
<h1>WLP PW helper</h1>
<form action="PWServlet" method="get">
    Enter your pw: <input type="text" name="vfpw" size="100">
    <input type="submit" value="Call Servlet" />
    
      <table border="2" align="center">
                <caption>
                    <h2>Dump of system info</h2></caption>
                <tr><td>Today is: <b> <%= new Date().toString() %></b></td> </tr>
                <tr> <td>Server host name is: <b><%=request.getServerName() %></b></td> </tr>
                <tr> <td>Server version is: <b><%=getServletContext().getServerInfo() %> </b> </td> </tr>
                <tr> <td>Server Protocol is: <b><%=request.getProtocol() %></b> </td> </tr>
            </table>
</form>