<%@include file="usermenu.jsp" %>
<%
String book_seats1=request.getParameter("book_seats");
int book_seats=Integer.parseInt(book_seats1);
session.setAttribute("book_seats",book_seats);
%>

<html>
<head>
<script language="javascript">
function check()
{
	if(document.f1.s_no.value=="")
	{
	  alert("S.No field should not be blank");
                    document.f1.s_no.focus();
	 return false;
	}
	
	if(document.getElementById("pass_nm").value=="")
	{
	 alert("Passenger name field should not empty");
	 document.getElementById("pass_nm").focus();
	 return false;
	}
        if(document.getElementById("age").value=="")
	{
	 alert("Age field should not empty");
	 document.getElementById("age").focus();
	 return false;
	}
        
        if(document.getElementById("gen").value=="")
	{
	 alert("Gender field should not empty");
	 document.getElementById("gen").focus();
	 return false;
	}
               
}

</script>
</head>

<form name=f1 action="enter_your_details1.jsp" method=post onsubmit="return check()">
<center>
<table border=2>
<tr><td>S_NO</td> <td><input type=text name=s_no></td></tr><br><br>
<tr>
<td>PASSENGER_NAME</td> <td><input type=text name=pass_nm id="pass_nm"></td></tr>
<tr><td>AGE</td> <td><input type=text name=age id="age"></td></tr><br><br>
<tr><td>GENDER</td> <td><input type=radio name=gen id="gen" value=M>Male
	<input type=radio name=gen id="gen" value=F>Female</td></tr><br><br>

<tr><td colspan=2 allign=center><input type=submit value=Submit></td></tr>
</center>

</form>
</html>