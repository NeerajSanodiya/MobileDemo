<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="msg.MyMessage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login Here</h1>

<form action="loginvarify.jsp" method="post">
<%
			MyMessage myMessage=(MyMessage)request.getAttribute("LOGINMSG");
			if(myMessage!=null){
				out.println(myMessage.getLoginMessage());
			}
			
		%>
<table>
<tr><td>User Name</td>
<td><input type="text" name="unm"> </td>
</tr>
<tr><td>Password</td>
<td><input type="password" name="up"> </td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Login">
</td><td><a href=""> ? forget Password ? </a></td>
</tr>

</table>

</form>
</body>
</html>