<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
		<title>Sport Store :: Home</title>
		<link href="<c:url value="/resources/css/style.css" />" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!----start-alert-scroller---->
		<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.easy-ticker.js" />"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('#demo').hide();
			$('.vticker').easyTicker();
		});
		</script>
		<!----start-alert-scroller---->
		<!-- start menu -->
		<link href="<c:url value="/resources/css/megamenu.css" />" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="<c:url value="/resources/js/megamenu.js" />"></script>
		<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
		<script src="<c:url value="/resources/js/menu_jquery.js" />"></script>
		<!-- //End menu -->
		<!---slider---->
		<link rel="stylesheet" href="<c:url value="/resources/css/slippry.css" />">
		<script src="<c:url value="/resources/js/jquery-ui.js" />" type="text/javascript"></script>
		<script src="<c:url value="/resources/js/scripts-f0e4e0c2.js" />" type="text/javascript"></script>
		<script>
			  jQuery('#jquery-demo').slippry({
			  // general elements & wrapper
			  slippryWrapper: '<div class="sy-box jquery-demo" />', // wrapper to wrap everything, including pager
			  // options
			  adaptiveHeight: false, // height of the sliders adapts to current slide
			  useCSS: false, // true, false -> fallback to js if no browser support
			  autoHover: false,
			  transition: 'fade'
			});
		</script>
		<!----start-pricerage-seletion---->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery-ui.css" />">
		<script type='text/javascript'>//<![CDATA[ 
			$(window).load(function(){
			 $( "#slider-range" ).slider({
			            range: true,
			            min: 0,
			            max: 500,
			            values: [ 100, 400 ],
			            slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
			            }
			 });
			$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );
			
			});//]]>  
		</script>
		<!----//End-pricerage-seletion---->
		<!---move-top-top---->
		<script type="text/javascript" src="<c:url value="/resources/js/move-top.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/easing.js" />"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
		<!---//move-top-top---->
		
		
<!-- 		use for slide product in product detail -->
		<!-- Owl Carousel Assets -->
		<link href="<c:url value="/resources/css/owl.carousel.css" />" rel="stylesheet">
		<script src="js/jquery-1.9.1.min.js"></script> 
		     <!-- Owl Carousel Assets -->
		    <!-- Prettify -->
		    <script src="<c:url value="/resources/js/owl.carousel.js" />"></script>
		        <script>
		    $(document).ready(function() {
		
		      $("#owl-demo").owlCarousel({
		        items : 3,
		        lazyLoad : true,
		        autoPlay : true,
		        navigation : true,
			    navigationText : ["",""],
			    rewindNav : false,
			    scrollPerPage : false,
			    pagination : false,
    			paginationNumbers: false,
		      });
		
		    });
		    </script>
		   <!-- //Owl Carousel Assets -->
	</head>