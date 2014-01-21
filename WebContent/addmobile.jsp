<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="userhome.jsp" enctype="multipart/form-data" method="post">
<table>
<tr>
<td>Company Name : </td>
<td><input type="text" name="Company_Name"></td></tr>
<tr>
<td>Model Number : </td>
<td><input type="text" name="Model_Number"></td></tr>
<tr>
<td>Operating System : </td>
<td><input type="text" name="Os"></td></tr>
<tr>
<td>Price : </td>
<td><input type="text" name="Price"></td></tr>
<tr>
<td>Quantity : </td>
<td><input type="text" name="Quantity"></td></tr>
<tr>
<tr>
<td>Description : </td>
<td><textarea name="Description"></textarea></td></tr>
<td>Image : </td>
<td><input type="file" name="Image_path"></td></tr>
<tr><td><input type="submit" value="Submit" name="submit"></td></tr>
</table>
</form>
</body>
</html>