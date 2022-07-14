<%@ include file="connect.jsp" %>


<%
String rail_id1=request.getParameter("rail_id");
int rail_id=Integer.parseInt(rail_id1);
session.setAttribute("rail_id",rail_id);
String nm = request.getParameter("nm");
session.setAttribute("train_name",nm);
String price1=request.getParameter("price");
float price=Float.parseFloat(price1);
session.setAttribute("ticket_price",price);
PreparedStatement pst=con.prepareStatement("select count(*) from DEB.PASS_INFO where RAIL_ID=?");
pst.setInt(1,rail_id);
ResultSet rs=pst.executeQuery();
while(rs.next()){

%>
<form action="enter_your_details.jsp" method=post>
<center>
<table border=2>
<tr>

<tr>
<td>RAIL_ID:</td><td><%=rail_id%></td></tr>.<br>
<tr>
<td>TRAIN_NAME:</td><td><%=nm%></td></tr>.<br>
<tr><td>AVAILABLE_SEATS:</td><td><%=rs.getInt(1)%></td></tr>
<tr><td>BOOK_SEATS:</td><td><input type=number name=book_seats ></td></tr>

<tr><td colspan=2 allign=center><input type=submit value=submit></td></tr>
</center>

</form>
<%
} 
con.close();
%>