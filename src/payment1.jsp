<%@include file="connect.jsp"%>
<%
try{
String rail_id1 = session.getAttribute("rail_id").toString();
int rail_id=Integer.parseInt(rail_id1);
System.out.println(rail_id);
String coach_no = request.getParameter("coach_no");
session.setAttribute("COACH_NO","coach_no");
System.out.println(coach_no);

String seat_no = request.getParameter("seat_no");
session.setAttribute("SEAT_NO","seat_no");
System.out.println(seat_no);
String pass_id = request.getParameter("pass_id");
session.setAttribute("PASS_ID","pass_id");
System.out.println(pass_id);

String nm=(String) session.getAttribute("train_name");
System.out.println(nm);


%>
<center>
Reservation Details Of:<input type=text value="<%=nm%>" readonly></center>
<% 

PreparedStatement pst=con.prepareStatement("update DEB.PASS_INFO set flag='1' where PASS_ID=? and flag='0'");

pst.setString(1,pass_id);
int t=pst.executeUpdate();
        if(t>0)
         out.println("<h3>Reservation is Successfull");
      


PreparedStatement pst1=con.prepareStatement("select * from DEB.RAIL_USER_INFO where RAIL_ID=?");
pst1.setInt(1,rail_id);
System.out.println(rail_id);
ResultSet rs=pst1.executeQuery();
while(rs.next()){
%>
 

<center>
<form action="User_Logout.jsp" method=post>

<table border=2>
<tr><td>SL NO:</td><td><input type=text value="<%=rs.getInt(1)%>" readonly></td></tr>
<tr><td>PASSENGER NAME:</td><td><input type=text value="<%=rs.getString(3)%>" readonly></td></tr>
<tr><td>AGE:</td><td><input type=text value="<%=rs.getInt(4)%>" readonly></td></tr>
<tr><td>GENDER:</td><td><input type=text value="<%=rs.getString(5)%>" readonly></td></tr>
<%
}
%>
</table>

<input type=submit value="User_Logout">
</form>
</center>
<%


      }
      catch(Exception e)
       {
           out.println(e);
       }
%>

 


