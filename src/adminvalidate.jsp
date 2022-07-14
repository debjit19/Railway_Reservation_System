<%@include file="connect.jsp" %>
<%
        PreparedStatement pst=con.prepareStatement("select * from DEB.railway where userid=? and password=?");
        pst.setString(1,request.getParameter("uid"));
       pst.setString(2,request.getParameter("passwd"));
    ResultSet rs=pst.executeQuery();
   if(rs.next())
     response.sendRedirect("Adminhome.jsp");
   else
    {
%>
<center>
<font color=red><h3>Invalid UserId or password</h3></font>
<%@include file="adminlogin.html" %>
<%
    }
    con.close();
%>