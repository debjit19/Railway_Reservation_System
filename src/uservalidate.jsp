<%@include file="connect.jsp" %>
<%
        

String mno=request.getParameter("mno");
String pass=request.getParameter("pass");


PreparedStatement pst=con.prepareStatement("select * from DEB.USER_INFO where Mobile_No=? and Password=?");
        pst.setString(1,mno);
       pst.setString(2,pass);
    ResultSet rs=pst.executeQuery();
   if(rs.next())
  {
     session.setAttribute("Mobile_No",rs.getString(1));
     response.sendRedirect("Userhome.jsp");
   }
   else
    {
%>
<center>
<font color=red><h3>Invalid UserId or password</h3></font>
<%@include file="userlogin.html" %>
<%
    }
    con.close();
%>