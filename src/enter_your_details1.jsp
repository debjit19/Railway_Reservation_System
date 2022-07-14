<%@include file="connect.jsp" %>
<%@include file="usermenu.jsp" %>
<%

try{
int s_no=Integer.parseInt(request.getParameter("s_no"));
System.out.println(s_no);
String pass_nm = request.getParameter("pass_nm");
System.out.println(pass_nm);
int age = Integer.parseInt(request.getParameter("age"));
System.out.println(age);
String gen = request.getParameter("gen");
System.out.println(gen);
String rail_id1 = session.getAttribute("rail_id").toString();

int rail_id=Integer.parseInt(rail_id1);
System.out.println(rail_id);
Integer book_seats=Integer.parseInt(session.getAttribute("book_seats").toString());
System.out.println(book_seats);
PreparedStatement pst=con.prepareStatement("insert into DEB.RAIL_USER_INFO values(?,?,?,?,?)");

pst.setInt(1,s_no);  
pst.setInt(2,rail_id);
pst.setString(3,pass_nm);
  pst.setInt(4,age);
  pst.setString(5,gen);

int x=pst.executeUpdate();
if(x>0){
System.out.println("pass");
}
else{
System.out.println("fail");
}
PreparedStatement pst1=con.prepareStatement("select price from DEB.RAIL_INFO where id=?");
pst1.setInt(1,rail_id);
ResultSet rs1=pst1.executeQuery();
while(rs1.next())
{
   float price=rs1.getFloat(1);
   float payment=price*book_seats;

%>
<html>
<body>        
<form action="payment.jsp" method=post>
<table><tr><td>Price:</td><td><%=payment%></td></tr>
<tr><td><input type=submit value=payment></td></tr></table>  
        
</form>  
</body>  
</html>
<%
}
con.close();
}
catch(Exception e){
out.println(e);
}
%>