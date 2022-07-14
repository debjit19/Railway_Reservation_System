<%@include file="connect.jsp"%>
<%
int rail_id=Integer.parseInt(request.getParameter("rail_id"));
session.setAttribute("rail_id",rail_id);
PreparedStatement pst=con.prepareStatement("select * from DEB.RAIL_USER_INFO where RAIL_ID=?");
pst.setInt(1,rail_id);
System.out.println(rail_id);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<center>
<form action="view_reservation_details3.jsp" method=post>

<table border=2>

<tr><td>SL_NO:</td><td><input type=number value="<%=rs.getInt(1)%>" readonly></td></tr>
<tr><td>RAIL_ID:</td><td><input type=number value="<%=rail_id%>" readonly></td></tr>
<tr><td>PASSENGER NAME:</td><td><input type=text value="<%=rs.getString(3)%>" readonly></td></tr>
<tr><td>AGE:</td><td><input type=number value="<%=rs.getInt(4)%>" readonly></td></tr>
<tr><td>GENDER:</td><td><input type=text value="<%=rs.getString(5)%>" readonly></td></tr>

<%
}
%>

</table>
<input type=submit value=submit>
</form>
</center>

