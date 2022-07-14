<%@include file="connect.jsp" %>
<%
try{
String rail_id1 = session.getAttribute("rail_id").toString();
int rail_id=Integer.parseInt(rail_id1);
String book_seats1 = session.getAttribute("book_seats").toString();
int book_seats=Integer.parseInt(book_seats1);

PreparedStatement pst=con.prepareStatement("select * from DEB.PASS_INFO where RAIL_ID=? and flag='0'");
pst.setInt(1,rail_id);
ResultSet rs=pst.executeQuery();
 
while(rs.next()){

%>



<form action=payment1.jsp method="post">

<center>
<table border=2>

PASS_ID:<input type=text name=pass_id value="<%=rs.getString(1)%>"readonly>
COACH_NO:<input type=text name=coach_no value="<%=rs.getString(2)%>"readonly>
SEAT_NO:<input type=text name=seat_no value="<%=rs.getString(3)%>"readonly>
RAIL_ID:<input type=text value="<%=rail_id%>"readonly>
<input type=submit value="submit">
</table>
</center>
</form>

<%

}


}
catch(Exception e){
System.out.println(e);
}
%>

