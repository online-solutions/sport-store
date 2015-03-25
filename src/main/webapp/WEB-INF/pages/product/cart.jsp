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
			<c:if test="${not empty listProduct}">
			<c:forEach var="mapProduct" items="${listProduct}">
				<c:forEach var="entry" items="${mapProduct}">
				  Product name: <c:out value="${entry.key.name}"/><br/>
				  Count: <c:out value="${entry.value}"/>
				</c:forEach>
			</c:forEach>
			</c:if>
			</div>
			</div>
		
		<!---- start-bottom-grids---->
	<jsp:include page="../include/bottom_grid.jsp"></jsp:include>

	<!--- //End-content---->

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!---//End-wrap---->
</body>