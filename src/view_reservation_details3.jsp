<%@include file="connect.jsp"%>
<%
String rail_id1 = session.getAttribute("rail_id").toString();
int rail_id=Integer.parseInt(rail_id1);

PreparedStatement pst=con.prepareStatement("select * from DEB.PASS_INFO where RAIL_ID=? and flag='1'");
pst.setInt(1,rail_id);
System.out.println(rail_id);
ResultSet rs=pst.executeQuery();
out.println("Reserved Seats are:");
while(rs.next())
{

%>
<center>
<form action="view_reservation_details4.jsp" method=post>

<table border=2>

<tr><td>PASS_ID:</td><td><input type=text value="<%=rs.getString(1)%>" readonly></td></tr>
<tr><td>COACH_NO:</td><td><input type=text value="<%=rs.getString(2)%>" readonly></td></tr>
<tr><td>SEAT_NO:</td><td><input type=text value="<%=rs.getString(3)%>" readonly></td></tr>
<tr><td>RAIL_ID:</td><td><input type=number value="<%=rail_id%>" readonly></td></tr>

<%
}
%>

</table>
<input type=submit value=submit>
</form>
</center>

