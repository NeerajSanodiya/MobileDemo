<%@page import="dto.MobileDTO"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img src="Image/addcart.png" height="50" width="50">
	<jsp:useBean id="mobileController" class="controller.MobileController"></jsp:useBean>
	<%

	List <MobileDTO>mList=mobileController.getMobile(request, response);
		
	
	
	
	%>
	<table border="1" width="70%" align="center">
		<tr>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				O S 
			</td>
			<td style="COLOR: #400040; BACKGROUND-COLOR: #ff8080; FONT-FAMILY: 'Andalus';">
				Company
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				Model No
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				Price
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				Quantity
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				Decscription
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				Image
			</td>
		</tr>
		<%
			for(MobileDTO mobileDTO:mList){%>
			<tr>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				<%=mobileDTO.getOs() %>
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
			<%=mobileDTO.getCompany_Name() %>
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				<%=mobileDTO.getModel_Number()%>
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				<%=mobileDTO.getPrice() %>
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				<%=mobileDTO.getQuantity() %>
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				<%=mobileDTO.getDescription() %>
			</td>
			<td style="BACKGROUND-COLOR: #ff8080; COLOR: #400040; FONT-FAMILY: 'Andalus';">
				<img src="<%=mobileDTO.getImage_path()%>" height="50" width="100" style=" width : 132px;"></img>
			
			</td>
		</tr>	
				
				
			<%}
		
		%>
	
	
	</table>
	
	
	
</body>
</html>