<!DOCTYPE HTML>
<html>
<jsp:include page="../include/head.jsp"></jsp:include>
<body>
	<!---start-wrap---->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<!--- start-content---->
	<div class="content login-box">
		<div class="login-main">
			<div class="wrap">
				<h1>CREATE AN ACCOUNT</h1>
				<div class="register-grids">
					<form>
						<div class="register-top-grid">
							<h3>PERSONAL INFORMATION</h3>
							<div>
								<span>First Name<label>*</label></span> <input type="text">
							</div>
							<div>
								<span>Last Name<label>*</label></span> <input type="text">
							</div>
							<div>
								<span>Email Address<label>*</label></span> <input type="text">
							</div>
							<div class="clear"></div>
							<a class="news-letter" href="#"> <label class="checkbox"><input
									type="checkbox" name="checkbox" checked=""><i> </i>Sign
									Up for Newsletter</label>
							</a>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
						<div class="register-bottom-grid">
							<h3>LOGIN INFORMATION</h3>
							<div>
								<span>Password<label>*</label></span> <input type="text">
							</div>
							<div>
								<span>Confirm Password<label>*</label></span> <input type="text">
							</div>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
						<input type="submit" value="submit" />
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/bottom_grid.jsp"></jsp:include>

	<!--- //End-content---->

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!---//End-wrap---->
</body>