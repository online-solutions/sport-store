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
				<h1>LOGIN OR CREATE AN ACCOUNT</h1>
				<div class="login-left">
					<h3>NEW CUSTOMERS</h3>
					<p>By creating an account with our store, you will be able to
						move through the checkout process faster, store multiple shipping
						addresses, view and track your orders in your account and more.</p>
					<a class="acount-btn" href="register.html">Creat an Account</a>
				</div>
				<div class="login-right">
					<h3>REGISTERED CUSTOMERS</h3>
					<p>If you have an account with us, please log in.</p>
					<form>
						<div>
							<span>Email Address<label>*</label></span> <input type="text">
						</div>
						<div>
							<span>Password<label>*</label></span> <input type="password">
						</div>
						<a class="forgot" href="#">Forgot Your Password?</a> <input
							type="submit" value="Login" />
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/bottom_grid.jsp"></jsp:include>

	<!--- //End-content---->

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!---//End-wrap---->
</body>