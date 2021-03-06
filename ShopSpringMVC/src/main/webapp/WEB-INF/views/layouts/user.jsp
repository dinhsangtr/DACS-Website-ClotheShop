<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<title>SS Clothes</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="SS" />
<script type="application/x-javascript">
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 






</script>

<!--//tags -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/assets/user/css/style.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/assets/user/css/font-awesome.css"/>"
	rel="stylesheet">
<link href="<c:url value="/assets/user/css/easy-responsive-tabs.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/assets/user/css/flexslider.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/assets/user/css/jquery-ui.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/assets/user/css/team.css"/>" rel='stylesheet'
	type='text/css' />
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>

<decorator:head />
</head>


<body>

	<!-- header -->
	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<!-- //header -->

	<!-- content -->
	<decorator:body />
	<!-- //content -->

	<!-- footer -->
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	<!-- //footer -->














	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- js -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery-2.1.4.min.js"/>"></script>
	<!-- //js -->
	<script src="<c:url value="/assets/user/js/modernizr.custom.js"/>"></script>
	<!-- Custom-JavaScript-File-Links -->
	<!-- cart-js -->
	<script src="<c:url value="/assets/user/js/minicart.min.js"/>"></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action : '#'
		});

		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>

	<!-- //cart-js -->
	<!-- script for responsive tabs -->
	<script src="<c:url value="/assets/user/js/easy-responsive-tabs.js"/>"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- //script for responsive tabs -->
	<!-- stats -->
	<script src="<c:url value="/assets/user/js/jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/jquery.countup.js"/>"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/move-top.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery.easing.min.js"/>"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->

	<script type="text/javascript"
		src="<c:url value="/assets/user/js/imagezoom.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery.countup.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery.flexslider.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery.waypoints.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery-ui.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/modernizr.custom.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/responsiveslides.min.js"/>"></script>



	<!-- for bootstrap working -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/bootstrap.js"/>"></script>

	<decorator:getProperty property="page.script"></decorator:getProperty>
	<decorator:getProperty property="page.script1"></decorator:getProperty>
	<decorator:getProperty property="page.script2"></decorator:getProperty>
	<decorator:getProperty property="page.scripts111"></decorator:getProperty>
	<decorator:getProperty property="page.script222"></decorator:getProperty>
</body>
</html>
