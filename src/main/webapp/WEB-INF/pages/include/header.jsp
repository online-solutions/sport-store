<%@ include file="taglib.jsp"%>
<!---start-header---->
<div class="header">
	<div class="top-header">
		<div class="wrap">
			<div class="top-header-left">
				<ul>
					<!---cart-tonggle-script---->
					<script type="text/javascript">
						$(function() {
							var $cart = $('#cart');
							$('#clickme').click(function(e) {
								e.stopPropagation();
								if ($cart.is(":hidden")) {
									$cart.slideDown("slow");
								} else {
									$cart.slideUp("slow");
								}
							});
							$(document.body).click(function() {
								if ($cart.not(":hidden")) {
									$cart.slideUp("slow");
								}
							});
						});
					</script>
					<!---//cart-tonggle-script---->
					<li><a class="cart" href="#"><span id="clickme"> </span></a></li>
					<!---start-cart-bag---->
					<div id="cart">
						Your Cart is Empty <span>(0)</span>
					</div>
					<!---start-cart-bag---->
					<li><a class="info" href="#"><span> </span></a></li>
				</ul>
			</div>
			<div class="top-header-center">
				<div class="top-header-center-alert-left">
					<h3>FREE DELIVERY</h3>
				</div>
				<div class="top-header-center-alert-right">
					<div class="vticker" style="height: 20px !important;">
						<ul>
							<li>Applies to orders of $50 or more. <label>Returns
									are always free.</label></li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="top-header-right">
				<ul>
				<c:choose>
				    <c:when test="${empty currentUser}">
				       	<li><a href="login?from=${requestScope['javax.servlet.forward.request_uri']}">Login</a><span> </span></li>
						<li><a href="register">Join</a></li>
				    </c:when>
				    <c:otherwise>
				        <li><a href="profile">${currentUser.displayName}</a><span> </span></li>
						<li><a href="logout">Log Out</a></li>
				    </c:otherwise>
				</c:choose>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!----start-mid-head---->
	<div class="mid-header">
		<div class="wrap">
			<div class="mid-grid-left">
				<form>
					<input type="text" placeholder="What Are You Looking for?" />
				</form>
			</div>
			<div class="mid-grid-right">
				<a class="logo" href="<c:url value="/" />"><span> </span></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!----//End-mid-head---->
	
	
	
	
	<!----start-bottom-header---->
	<div class="header-bottom">
		<div class="wrap">
			<!-- start header menu -->
			<ul class="megamenu skyblue">
			<li class="active grid"><a class="color1" href="<c:url value="/" />">home</a></li>
				<c:forEach var="menu" items="${menus}">
				<li class="grid"><a class="color2" href="<c:url value="/product/${menu.link}" />">${menu.name}</a></li>
				</c:forEach>
					
				
				<li><a class="color8" href="#">NIKEiD</a>
					<div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>style zone</h4>
									<ul>
										<li><a href="products.html">men</a></li>
										<li><a href="products.html">women</a></li>
										<li><a href="products.html">accessories</a></li>
										<li><a href="products.html">kids</a></li>
										<li><a href="products.html">brands</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>popular</h4>
									<ul>
										<li><a href="products.html">new arrivals</a></li>
										<li><a href="products.html">men</a></li>
										<li><a href="products.html">kids</a></li>
										<li><a href="products.html">accessories</a></li>
										<li><a href="products.html">login</a></li>
									</ul>
								</div>
								<div class="h_nav">
									<h4 class="top">man</h4>
									<ul>
										<li><a href="products.html">new arrivals</a></li>
										<li><a href="products.html">accessories</a></li>
										<li><a href="products.html">kids</a></li>
										<li><a href="products.html">style videos</a></li>
									</ul>
								</div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></div></li>
			</ul>

		</div>
	</div>
</div>
<!----//End-bottom-header---->
<!---//End-header---->