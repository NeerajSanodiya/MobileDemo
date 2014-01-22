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
<h1>ADD CART PAGE</h1>
<h2>Show Cart</h2>

	<jsp:useBean id="mobileController" class="controller.MobileController"></jsp:useBean>
	<%
	List <MobileDTO>mList=mobileController.getMobile(request, response);
			%>		
		<%
			for(MobileDTO mobileDTO:mList){%>
			<img src="<%=mobileDTO.getImage_path()%>" height="383px" width="168px"></img>
	s		
			</br> op :	<%=mobileDTO.getOs() %>
			
			</br> Company Name :<%=mobileDTO.getCompany_Name() %>
			
				</br> model  :<%=mobileDTO.getModel_Number()%>
			
				</br> price :<%=mobileDTO.getPrice() %>
			<%}	
		%>

</body>
</html>