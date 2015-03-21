<%@ include file="../include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<!---start-wrap---->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<!--- start-content---->
	<div class="content product-box-main">
			<div class="wrap">
				<jsp:include page="content/left_menu.jsp"></jsp:include>
				<div class="content-right product-box">
					<div class="product-box-head">
							<div class="product-box-head-left">
								<h3>Products <span>(500)</span></h3>
							</div>
							<div class="product-box-head-right">
								<ul>
									<li><span>Sort ::</span><a href="#"> </a></li>
									<li><label> </label> <a href="#"> Popular</a></li>
									<li><label> </label> <a href="#"> New</a></li>
									<li><label> </label> <a href="#"> Discount</a></li>
									<li><span>Price ::</span><a href="#">Low High</a></li>
								</ul>
							</div>
							<div class="clear"> </div>
					</div>
					<div class="product-grids">
						<!--- start-rate---->
							<script src="<c:url value="/resources/js/jstarbox.js" />"></script>
							
							<link rel="stylesheet" href="<c:url value="/resources/css/jstarbox.css" />" type="text/css" media="screen" charset="utf-8" />
							
							<script type="text/javascript">
								jQuery(function() {
									jQuery('.starbox').each(function() {
										var starbox = jQuery(this);
										starbox.starbox({
											average: starbox.attr('data-start-value'),
											changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
											ghosting: starbox.hasClass('ghosting'),
											autoUpdateAverage: starbox.hasClass('autoupdate'),
											buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
											stars: starbox.attr('data-star-count') || 5
										}).bind('starbox-value-changed', function(event, value) {
											if(starbox.hasClass('random')) {
												var val = Math.random();
												starbox.next().text(' '+val);
												return val;
											} 
										})
									});
								});
							</script>
							<!---//End-rate---->
						
						
						
						<c:forEach var="product" varStatus="loop" items="${listProduct}">
						
						<div class="product-grid fade <c:if test="${(loop.index + 1)%3 == 0}">last-grid</c:if>" onclick="location.href='${product.id}';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (${product.totalReview})</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="<c:url value="/product/men/${product.id}" />"><img src="<c:url value="/resources/images/product${product.id}.jpg" />" title="product-name" style="height: 150px; width: 240px;"/></a>
								<p>
								<!-- <a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a> -->
								<a href="<c:url value="/product/men/${product.id}" />"><small>${product.name}</small></a>
								<span>${product.manufacturer}</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="<c:url value="/product/men/${product.id}" />">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; ${product.price}</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						</c:forEach>
						
						
						
						
						<div class="clear"> </div>
					</div>
					<!----start-load-more-products---->
					<div class="loadmore-products">
						<a href="#">Loadmore</a>
					</div>
					<!----//End-load-more-products---->
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		
		<!---- start-bottom-grids---->
	<jsp:include page="../include/bottom_grid.jsp"></jsp:include>

	<!--- //End-content---->

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!---//End-wrap---->
</body>