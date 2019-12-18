<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>StepZart | Single</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<!-- fontawesome-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu_sideslide.css" type="text/css"
	media="all">
<!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //meta tags -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
<script>
	$(document).ready(function() {
		var mySelect = $('#first-disabled2');

		$('#special').on('click', function() {
			mySelect.find('option:selected').prop('disabled', true);
			mySelect.selectpicker('refresh');
		});

		$('#special2').on('click', function() {
			mySelect.find('option:disabled').prop('disabled', false);
			mySelect.selectpicker('refresh');
		});

		$('#basic2').selectpicker({
			liveSearch : true,
			maxOptions : 1
		});
	});
</script>
<!-- language-select -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.leanModal.min.js"></script>
<link href="${pageContext.request.contextPath}/css/jquery.uls.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/jquery.uls.grid.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/jquery.uls.lcd.css" rel="stylesheet" />
<!-- Source -->
<script src="${pageContext.request.contextPath}/js/jquery.uls.data.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.data.utils.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.lcd.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.languagefilter.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.regionfilter.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.core.js"></script>
<script>
	$(document).ready(function() {
		$('.uls-trigger').uls({
			onSelect : function(language) {
				var languageName = $.uls.data.getAutonym(language);
				$('.uls-trigger').text(languageName);
			},
			quickList : [ 'en', 'hi', 'he', 'ml', 'ta', 'fr' ]
		//FIXME
		});
	});
</script>
<script src="${pageContext.request.contextPath}/js/tabs.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var elem = $('#container ul');
				$('#viewcontrols a').on(
						'click',
						function(e) {
							if ($(this).hasClass('gridview')) {
								elem.fadeOut(1000, function() {
									$('#container ul').removeClass('list')
											.addClass('grid');
									$('#viewcontrols').removeClass(
											'view-controls-list').addClass(
											'view-controls-grid');
									$('#viewcontrols .gridview').addClass(
											'active');
									$('#viewcontrols .listview').removeClass(
											'active');
									elem.fadeIn(1000);
								});
							} else if ($(this).hasClass('listview')) {
								elem.fadeOut(1000, function() {
									$('#container ul').removeClass('grid')
											.addClass('list');
									$('#viewcontrols').removeClass(
											'view-controls-grid').addClass(
											'view-controls-list');
									$('#viewcontrols .gridview').removeClass(
											'active');
									$('#viewcontrols .listview').addClass(
											'active');
									elem.fadeIn(1000);
								});
							}
						});
			});
</script>
<!-- //language-select -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css" media="screen" />
<!-- flexslider css -->
</head>
<body>


	<!-- header Start-->
	<jsp:include page="headerWithoutSlider.jsp" />
	<!-- header -->

	<!--single-page-->
	<div class="single-page main-grid-border">
		<div class="container">
			<div class="product-desc">
				<div class="col-md-7 product-view">
					<h2>${product.title}</h2>
					<p>
						<i class="glyphicon glyphicon-map-marker"></i><a href="#">state</a>,
						<a href="#">${product.location}</a>| Added at 06:55 pm, Ad ID:
						987654321
					</p>
					<div class="flexslider">
						<ul class="slides">

							<c:if test="${not empty product.image1}">
								<li data-thumb="/uploads/${product.image1}"><img
									src="/uploads/${product.image1}" /></li>
							</c:if>

							<c:if test="${not empty product.image2}">
								<li data-thumb="/uploads/${product.image2}"><img
									src="/uploads/${product.image2}" /></li>
							</c:if>

							<c:if test="${not empty product.image3}">
								<li data-thumb="/uploads/${product.image3}"><img
									src="/uploads/${product.image3}" /></li>
							</c:if>

							<c:if test="${not empty product.image4}">
								<li data-thumb="/uploads/${product.image4}"><img
									src="/uploads/${product.image4}" /></li>
							</c:if>

							<c:if test="${not empty product.image5}">
								<li data-thumb="/uploads/${product.image5}"><img
									src="/uploads/${product.image5}" /></li>
							</c:if>
						</ul>
					</div>
					<!-- FlexSlider -->
					<script defer src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>

					<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								controlNav : "thumbnails"
							});
						});
					</script>
					<!-- //FlexSlider -->
					<div class="product-details">

						<h4>
							<span class="w3layouts-agileinfo">Summary</span> :
							<h3>${product.description}.</h3>

						</h4>

					</div>
				</div>
				<div class="col-md-5 product-details-grid">
					<div class="item-price">
						<div class="product-price">
							<p class="p-price">Price</p>
							<h3 class="rate">Rs. ${product.price }</h3>
							<div class="clearfix"></div>
						</div>
						<div class="condition">
							<p class="p-price">Condition</p>
							<h4>Good</h4>
							<div class="clearfix"></div>
						</div>
						<div class="itemtype">
							<p class="p-price">Item Type</p>
							<h4>${product.category}</h4>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="interested text-center">
						<h4>
							Interested in this Ad?<small> Contact the Seller!</small>
						</h4>
						<p>
							<i class="glyphicon glyphicon-earphone"></i>00-85-9875462655
						</p>
					</div>
					<div class="tips">
						<h4>Safety Tips for Buyers</h4>
						<ol>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
							<li><a href="#">Contrary to popular belief.</a></li>
						</ol>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//single-page-->

	<!--footer section start-->
	<jsp:include page="footer.jsp" />
	<!--footer section end-->

</body>
<!-- Navigation-JavaScript -->
<script src="${pageContext.request.contextPath}/js/classie.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- //Navigation-JavaScript -->
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
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
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
<!-- start-smoth-scrolling -->
<!-- //here ends scrolling icon -->
</html>