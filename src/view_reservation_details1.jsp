<%@include file="connect.jsp" %>



<%
PreparedStatement pst=con.prepareStatement("select * from DEB.RAIL_INFO");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
 <form action="view_reservation_details2.jsp" method=post>
<center>


Id:<input type=number name=rail_id value="<%=rs.getInt(1)%>" readonly>.<br>
Source:<%=rs.getString(2)%>.<br>
Destination:<%=rs.getString(3)%> .<br>
Train Name:<input type = text name = nm value="<%=rs.getString(4)%>" readonly>.<br>
Departure:<%=rs.getString(5)%> .<br>
Arrival:<%=rs.getString(6)%> .<br>
Price <b>:<input type=number name=price value="<%=rs.getFloat(7)%>" readonly>./-<br></b></br>
Description:<%=rs.getString(8)%> .<br><br>
<input type=submit value=submit><br><br>
</center></form>
<%
}
%>

  




   





  













