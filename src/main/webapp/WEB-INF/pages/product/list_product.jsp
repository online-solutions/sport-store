<!DOCTYPE HTML>
<html>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<!---start-wrap---->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<!--- start-content---->
	<div class="content product-box-main">
			<div class="wrap">
				<div class="content-left">
					<div class="content-left-top-brands">
						<h3>Categories</h3>
						<ul>
							<li><a href="#">ALL</a></li>
							<li><a href="#">WOMEN</a></li>
							<li><a href="#">NEW ARRIVALS</a></li>
							<li><a href="#">TRENDS</a></li>
							<li><a href="#">BOYS</a></li>
							<li><a href="#">GIRLS</a></li>
							<li><a href="#">SALE</a></li>
						</ul>
					</div>
						<div class="content-left-top-grid">
							<div class="content-left-price-selection content-left-top-brands-prices">
								<h4>Select Price:</h4>
								<div class="price-selection-tree">
									<span class="col_checkbox">
										<input id="10" class="css-checkbox10" type="checkbox">
										<label class="normal"><i for="10" name="demo_lbl_10"  class="css-label10"> </i> 400</label>
									</span>
									<span class="col_checkbox">
										<input id="11" class="css-checkbox11" type="checkbox">
										<label class="active1"><i for="11" name="demo_lbl_11"  class="css-label11"> </i>350</label>
									</span>
									<span class="col_checkbox">
										<input id="12" class="css-checkbox12" type="checkbox">
										<label class="normal"><i for="12" name="demo_lbl_12"  class="css-label12"> </i> 300</label>
									</span>
									<span class="col_checkbox">
										<input id="13" class="css-checkbox13" type="checkbox">
										<label class="normal"><i for="13" name="demo_lbl_13"  class="css-label13"> </i>250</label>
									</span>
									<span class="col_checkbox">
										<input id="14" class="css-checkbox14" type="checkbox">
										<label class="normal"><i for="14" name="demo_lbl_14"  class="css-label14"> </i> 200</label>
									</span>
									<span class="col_checkbox">
										<input id="15" class="css-checkbox15" type="checkbox">
										<label class="normal"><i for="15" name="demo_lbl_15"  class="css-label15"> </i>150</label>
									</span>
								</div>
								
						</div>
						</div>
				</div>
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
							<script src="js/jstarbox.js"></script>
							<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
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
						<div class="product-grid fade" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product2.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 380</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product1.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 375</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade last-grid" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product3.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 350</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product4.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 370</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product5.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 355</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade last-grid" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product6.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 390</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product4.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 370</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade" onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product5.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 355</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
						<div class="product-grid fade last-grid"  onclick="location.href='details.html';">
							<div class="product-grid-head">
								<ul class="grid-social">
									<li><a class="facebook" href="#"><span> </span></a></li>
									<li><a class="twitter" href="#"><span> </span></a></li>
									<li><a class="googlep" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<div class="block">
									<div class="starbox small ghosting"> </div> <span> (46)</span>
								</div>
							</div>
							<div class="product-pic">
								<a href="#"><img src="images/product6.jpg" title="product-name" /></a>
								<p>
								<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
								<span>Men's Firm-Ground Football Boot</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="details.html">Details</a>
								</div>
								<div class="product-info-price">
									<a href="details.html">&#163; 390</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
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