<%@ include file="include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="include/head.jsp"></jsp:include>
	<body>
	<!-- <form method="post" action="submitLogin">
		<input type="text" id="username">
		<input type="text" id="password">
		<input type="submit" value="Submit">
		<input type="reset" value="Clear">
	</form> -->
	
	<div class="login-admin">
					<h3>MANAGE SYSTEM</h3>
					<form:form method="post" action="submitLogin" commandName="user" >
						<div>
							<span>Email Address<label>*</label></span> <form:input path="email"/>
						</div>
						<div>
							<span>Password<label>*</label></span> <form:password path="password" />
						</div>
						<input type="submit" value="Login" />
						<input type="reset" value="Clear" />
					</form:form>
				</div>
	</body>
</html>