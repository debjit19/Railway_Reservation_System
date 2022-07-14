<html>
<body>
<center>
<%
String sr=request.getParameter("sr");
%>
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
}
</script>
</head>
</html>



<form name=f1 action="delete_items.jsp" method=post onclick="return check()">
<center>
<table border=2>
<tr><td>ID</td> <td><input type=text name=id></td></tr>

<input type=submit value="Delete">
</form></center>
</body></html>