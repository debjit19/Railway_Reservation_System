<%@ include file="connect.jsp" %>

<%

        
try{
        
int id=Integer.parseInt(request.getParameter("id"));

         
PreparedStatement pst=con.prepareStatement("delete from DEB.RAIL_INFO where id=?");
   pst.setInt(1,id);      


int t=pst.executeUpdate();
        if(t>0)
         out.println("<h3>Delete successfully");
      con.close();
      }
      catch(Exception e)
       {
           out.println(e);
       }
%>