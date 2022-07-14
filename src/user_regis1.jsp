<%@ include file="connect.jsp" %>
<%
   PreparedStatement pst=con.prepareStatement("insert into DEB.user_info values(?,?,?,?)");
    pst.setString(1,request.getParameter("mno"));
      pst.setString(2,request.getParameter("pass"));
   pst.setString(3,request.getParameter("addr"));
   pst.setString(4,request.getParameter("pinno"));
   int t=pst.executeUpdate();
   if(t>0)
    out.println("Register successfully");
   con.close();
%>
<br><br>
<a href=userlogin.html>Click hrer to login</a>