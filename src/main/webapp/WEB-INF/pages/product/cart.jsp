<%@ include file="../include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<!---start-wrap---->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<!--- start-content---->
	<div class="content">
			<div class="wrap">
			// TODO: List product with quality here -> table view
			 <br/><br/>

				
				<br /><br /><br />
			// table view
			<div class="cart-wrapper">
				<div class="cart-top-title">Your Shopping Cart</div>
				<div class="cart-body">
					<table style="width:100%">
						<tr class="cart-header">
							<td>Thumbnail</td>
							<td>Product</td>		
							<td>Price</td>
							<td>Quanlity</td>
							<td>Amount</td>
						</tr>
						<tr><td>Empty cart</td></tr>
					<c:choose>
						<c:when test="${not empty listProduct}">
						<tr>
							<c:forEach var="product" items="${listProduct}">
								<td>Thumbnail</td>
								<td>${product.key.name}</td>		
								<td>${product.key.price}</td>
								<td>${product.value}</td>
								<td>Amount</td>
							</c:forEach>
							</tr>
					    </c:when>
					    <c:otherwise>
					        <tr><td>Empty cart</td></tr>
					    </c:otherwise>
					</c:choose>
					
					</table>
				</div>
			</div>
				
			</div>
			</div>
		
		<!---- start-bottom-grids---->
	<jsp:include page="../include/bottom_grid.jsp"></jsp:include>

	<!--- //End-content---->

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!---//End-wrap---->
</body>