<%@ include file="../include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<title>Sport Store :: Shopping Cart</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<script>
	$(function(){
		/* $('#check-out').click(function(){
		    alert("click");            
		}); */
	});
</script>
<body>
	<!---start-wrap---->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<!--- start-content---->
	<div class="content">
			<div class="wrap">
			<div class="cart-wrapper">
				<div class="cart-top-title">Your Shopping Cart</div>
				<div class="cart-body">
					<table style="width:100%">
						<thead>
						<tr>
							<td>Thumbnail</td>
							<td>Product</td>		
							<td>Price</td>
							<td>Quantity</td>
							<td>Amount</td>
						</tr>
						</thead>
						
					<c:choose>
						<c:when test="${not empty sessionScope.cart_session}">
						<tbody>
						<c:set var="totalGrand" scope="session" value="0" />
							<c:forEach var="product" items="${sessionScope.cart_session}">
							<tr>
								<td><img class="etalage_small_thumb" src="http://localhost:8080/sport-store/resources/images/product-slide/image7_thumb.jpg" width="90" style="width: 90px; height: 120px;"></td>
								<td>${product.key.name}</td>		
								<td><fmt:formatNumber value="${product.key.price}" type="currency"/></td>
								<td><input type="number" min="1" value="${product.value}"/></td>
								<td><fmt:formatNumber value="${product.key.price * product.value}" type="currency"/></td>
								<c:set var="totalGrand" scope="session" value="${totalGrand + (product.key.price * product.value)}" />
							</tr>
							</c:forEach>
							</tbody>
							<tfoot>
								<tr>
								<td colspan="4">Total Amount</td>
								<td id="total_grand"><fmt:formatNumber value="${totalGrand}" type="currency"/></td>
								</tr>
							</tfoot>
					    </c:when>
					    <c:otherwise>
					        <tr><td>Empty cart</td></tr>
					    </c:otherwise>
					</c:choose>
					
					
					</table>
					<form action="<c:url value="/cart/checkout" />" method="post">
						<input type="submit" value="Check out" id="check-out" style="float:right;">
					</form>
					
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