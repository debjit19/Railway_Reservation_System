<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<%
  String sr=request.getParameter("sr");
 session.setAttribute("sr",sr);


try{
int id=Integer.parseInt(request.getParameter("id"));


String destination = request.getParameter("destination");
String nm = request.getParameter("nm");

String depart = request.getParameter("depart");
String arrive = request.getParameter("arrive"); 
float price = Float.parseFloat(request.getParameter("price"));
String description = request.getParameter("description"); 
PreparedStatement pst=con.prepareStatement("insert into DEB.RAIL_INFO values(?,?,?,?,?,?,?,?)");
pst.setInt(1,id);  
pst.setString(2,sr);
  pst.setString(3,destination);
  pst.setString(4,nm);
  pst.setString(5,depart);
  pst.setString(6,arrive);
  pst.setFloat(7,price);
  pst.setString(8,description);
int t = pst.executeUpdate();
if(t>0){
out.println("Inserted Successfully");
}
con.close();
}
catch(Exception e){
out.println(e);
}
%>
<html>
<body>        
<form input type="reset" name="Reset" value="Cancel">  
        
</form>  
</body>  
</html>  




