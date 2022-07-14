<%@ include file="adminmenu.jsp" %>

<html>
<head>
<script language="javascript">
function check()
{
	if(document.f1.id.value=="")
	{
	  alert("ID field should not be blank");
                    document.f1.s_no.focus();
	 return false;
	}
	
	if(document.getElementById("sr").value=="")
	{
	 alert("Source field should not empty");
	 document.getElementById("sr").focus();
	 return false;
	}
        if(document.getElementById("destination").value=="")
	{
	 alert("Destination field should not empty");
	 document.getElementById("destination").focus();
	 return false;
	}
        
        if(document.getElementById("nm").value=="")
	{
	 alert("Train name field should not empty");
	 document.getElementById("nm").focus();
	 return false;
	}
        
          if(document.getElementById("depart").value=="")
	{
	 alert("Departure field should not empty");
	 document.getElementById("depart").focus();
	 return false;
	}
          if(document.getElementById("arrive").value=="")
	{
	 alert("Arrival field should not empty");
	 document.getElementById("arrive").focus();
	 return false;
	}
        if(document.getElementById("price").value=="")
	{
	 alert("Price field should not empty");
	 document.getElementById("price").focus();
	 return false;
	}
        if(document.getElementById("desc").value=="")
	{
	 alert("Description field should not empty");
	 document.getElementById("desc").focus();
	 return false;
	}
               
}

</script>
</head>




<form name=f1 action=insert_items.jsp method=post onsubmit="return check()">
<center>
<table border=2>
<tr>
<td>ID</td> <td><input type=text name=id></td></tr>
<tr><td>Source</td> <td><input type=text name=sr id="sr"></td></tr><br><br>
<tr><td>Destination</td> <td><input type=text name=destination id="destination"></td></tr><br><br>
<tr><td>Train Name</td> <td>  <input type=text name=nm id="nm"></td></tr><br><br>
<tr><td>Departure Time</td> <td> <input type=text name=depart id="depart"></td></tr><br><br>
<tr><td>Arrival Time</td> <td> <input type=text name=arrive id="arrive"></td></tr><br><br> 
<tr><td>Price</td> <td> <input type=text name=price id="price"></td></tr><br><br>
<tr><td>description</td> <td> <textarea name=description rows=5 cols=20 id="desc"></textarea></td></tr><br></table>
<tr><td colspan=2 allign=center><input type=submit value=submit></td></tr>
</center>
</form>
