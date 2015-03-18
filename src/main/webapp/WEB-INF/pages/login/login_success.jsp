login success
${user.email}-
requestScope: ${requestScope.user.email}-
sessionScope: ${sessionScope.user.email}-
applicationScope: ${applicationScope.user.email} - 
<%= session.getAttribute( "user.email" ) %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:out value="${sessionScope.user.email}"/>

<jsp:include page="../include/head.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		var delay = 5000; //Your delay in milliseconds
		var URL = "${param['from']}";
		if(URL == ""){
			URL = "home";
		};
		setTimeout(function(){ window.location = URL; }, delay);
	});
	
</script>

redirect to previous page after 5 second 
default home