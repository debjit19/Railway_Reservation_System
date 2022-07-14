<%@ page import="java.sql.*" %>
<%!
        Connection con=null;
%>
<%
         try{
                 Class.forName("oracle.jdbc.OracleDriver");//compatibility
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Debjit21*");//connectivity
            }
            catch(Exception e)
             {
                  out.println(e);
            }
%>
	