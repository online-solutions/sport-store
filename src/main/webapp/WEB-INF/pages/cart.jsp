<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table cellpadding ="2" cellspacing="2" border="1">
	<tr>
		<td>Id</td>
		<td>Name<td>
		<td>Price</td>
		<td>Quantity</td>
	</tr>
	<!-- 
	<c:forEach var="product" items ="${sessionScope.product}">
		<tr>
			<td align="center">delete</td>
			<td>${product.id }</td>
			<td>${product.name }</td>
			<td>${product.price }</td>
			
			<td>${it.product.price *it.quantity }</td>
		</tr>
	</c:forEach>
	-->
	<c:forEach var="quantity" item="${sessionScope.quantity}">
		<tr>
			<td>Id</td>
			<td>Name<td>
			<td>Price</td>
			<td>${quantity }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>