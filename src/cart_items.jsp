<%@include file="connect.jsp" %>
<%@include file="usermenu.jsp" %>
<%
PreparedStatement pst=con.prepareStatement("select * from RKM_CART_ITEM where mob_no=?");
pst.setString(1,(String)session.getAttribute("mob_no"));
ResultSet rs=pst.executeQuery();
%>
<table border=2>
<tr>
            <td>Itemid</td>
            <td>No of item</td>
            <td>Total price</td>
            <td>Discount</td>
            <td>Payable Price</td>
             <td>

     </td>
</tr>
<%
double p_price=0;
while(rs.next())
{
     int price=0;
     double disc=0;
     String itid=rs.getString(2);
      int noofitem=rs.getInt(3);
     PreparedStatement pst1=con.prepareStatement("select * from rkm_shop_item where itemid=?");
   pst1.setString(1,itid);
    ResultSet rs1=pst1.executeQuery();
    if(rs1.next())
     {
          price=rs1.getInt(4);
         disc=rs1.getDouble(6);
     }
   int tot_price=noofitem*price;
   double disc1=tot_price*disc;
   double ac_price= tot_price-disc1;
   p_price=p_price+ac_price;
%>
<tr>
            <td><%=itid%></td>
            <td><%=noofitem%></td>
            <td>Rs.<%=tot_price%>/-</td>
            <td>Rs.<%=disc1%>/-</td>
            <td>Rs.<%=ac_price%>/-</td>
             <td><form action=remove_item.jsp method=post>
                 <input type=hidden name=itid value=<%=itid%>>
                 <input type=submit value="Remove Item"></form>
            </td>
</tr>
<%
}
con.close();
%>
<tr>
            <td>Total Price:</td>
            <td colspan=6 align=center><b>Rs.<%=p_price%>/-</b></td>
</tr>
</table>
<br>
<form action=final_order.jsp method=post>
<input type=submit value="Confirm Order">
</form>











