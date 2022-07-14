<%@include file="connect.jsp"%>
<%
  PreparedStatement pst=con.prepareStatement("insert into DEB.RESERVATION values(?,?)");
  pst.setString(1,(String)session.getAttribute("Mobile_no"));
  pst.setString(2,request.getParameter("id"));
  
  pst.executeUpdate();
  con.close();
  response.sendRedirect("view_items.jsp");
%>