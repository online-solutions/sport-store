<%@ include file="../include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<jsp:include page="../include/head.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		var delay = 5000; //Your delay in milliseconds
		var URL = "home";
		setTimeout(function(){ window.location = URL; }, delay);
	});
	
</script>
<body>
	<!---start-wrap---->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="login-main">
	<div class="wrap">
	<div class="register-success">
	
	<br>
		<p class="n-text">Register successful. 
			Please check your email for active.</p>
			
			<p class="n-text"><a href="home">Click here</a> if browser not redirect automatically.</p>
	</div>
		
	</div>
	</div>
	<jsp:include page="../include/bottom_grid.jsp"></jsp:include>

	<!--- //End-content---->

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<!---//End-wrap---->
</body>