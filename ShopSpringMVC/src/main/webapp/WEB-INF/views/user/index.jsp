<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<link href="<c:url value="/assets/user/shop/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/assets/user/shop/shop.css"/>"
	rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<div class="carousel-inner" role="listbox">

			<c:forEach var="item" items="${slider}" varStatus="index">
				<c:if test="${item.trang_thai == 1 }">
					<c:if test="${index.first}">
						<div class="item active">
					</c:if>
					<c:if test="${not index.first}">
						<div class="item">
					</c:if>


					<div
						style="background:-webkit-linear-gradient(rgba(23, 22, 23, 0.2),
		rgba(23, 22, 23, 0.5)), url(<c:url value="/assets/user/images/slider/${item.link}"/>) no-repeat;background: -moz-linear-gradient(rgba(23, 22, 23, 0.2),
		rgba(23, 22, 23, 0.5)),  url(<c:url value="/assets/user/images/slider/${item.link}"/>) no-repeat;
	background: -ms-linear-gradient(rgba(23, 22, 23, 0.2),
		rgba(23, 22, 23, 0.5)),  url(<c:url value="/assets/user/images/slider/${item.link}"/>) no-repeat;
	background: linear-gradient(rgba(23, 22, 23, 0.2), rgba(23, 22, 23, 0.5)),  url(<c:url value="/assets/user/images/slider/${item.link}"/>) no-repeat;
	background-size: cover;">

						<div class="container">
							<div class="carousel-caption">
								<h3>${item.mo_ta_1}</h3>
								<p>${item.mo_ta_2}</p>
								<a class="hvr-outline-out button2" href="#">Shop Now </a>
							</div>
						</div>
					</div>
		</div>
		</c:if>
		</c:forEach>

		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>


	<!-- //banner -->
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="banner_bottom_agile_info_inner_w3ls">
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<a href="#noibat">
						<figure class="effect-roxy">
							<img
								src="<c:url value="/assets/user/images/banner/bottom1.jpg"/>"
								alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>N</span>???I B???T
								</h3>
							</figcaption>
						</figure>
					</a>
				</div>
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<a href="#moive">
						<figure class="effect-roxy">
							<img
								src="<c:url value="/assets/user/images/banner/bottom2.jpg"/>"
								alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>M</span>???I V???
								</h3>
							</figcaption>
						</figure>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits" id="noibat">
		<div class="container">
			<h3 class="wthree_text_info">
				<span>N???i B???t</span>
			</h3>
			<div class="tab1">

				<c:if test="${san_pham.size() > 0}">
					<c:forEach var="item" items="${san_pham}">
						<c:if test="${item.trang_thai == 1 && item.noi_bat == 1}">
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img
											src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
											alt="" class="pro-image-front"> <img
											src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
											alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a
													href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'
													class="link-product-add-cart">Xem Ngay</a>
											</div>
										</div>
										<span class="product-new-top">New</span>

									</div>
									<div class="item-info-product ">
										<h4>
											<a
												href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'>${item.ten_san_pham}</a>
										</h4>
										<div class="info-product-price">
											<c:choose>
												<c:when test="${item.gia_ban == item.gia_khuyen_mai }">
													<span class="item_price"> <fmt:formatNumber
															type="number" groupingUsed="true" value="${item.gia_ban}" />
														??
													</span>
												</c:when>
												<c:when test="${item.gia_ban != item.gia_khuyen_mai }">
													<span class="item_price"><fmt:formatNumber
															type="number" groupingUsed="true"
															value="${item.gia_khuyen_mai} " /> ??</span>
													<del>
														<fmt:formatNumber type="number" groupingUsed="true"
															value="${item.gia_ban}" />
													</del>
												</c:when>
											</c:choose>
										</div>
										<div
											class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
											<form action="<c:url value="/add-cart/${item.id_san_pham}"/>"
												method="get">

												<input type="submit" name="submit" value="Th??m v??o gi???"
													class="button" />
											</form>
										</div>

									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</c:if>
				<div class="clearfix"></div>
			</div>


		</div>
	</div>
	<!--/grids-->
	<!-- /new_arrivals -->
	<div class="new_arrivals_agile_w3ls_info" id="moive">
		<div class="container">
			<h3 class="wthree_text_info">
				<span>H??ng M???i V???</span>
			</h3>
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>Nam</li>
					<li>N???</li>
					<li>Tr??? Em</li>
					<li>Ph??? Ki???n</li>
				</ul>
				<div class="resp-tabs-container">
					<!--/tab_one-->
					<div class="tab1">

						<c:if test="${san_pham.size() > 0}">
							<c:forEach var="item" items="${san_pham}">
								<c:if
									test="${(item.trang_thai == 1 && item.san_pham_moi == 1) && (item.id_danh_muc == 1 || item.id_danh_muc == 2 || item.id_danh_muc == 3 || item.id_danh_muc == 4 || item.id_danh_muc == 5 || item.id_danh_muc == 6 || item.id_danh_muc == 7)}">
									<div class="col-md-3 product-men">
										<div class="men-pro-item simpleCart_shelfItem">
											<div class="men-thumb-item">
												<img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-front"> <img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-back">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<a
															href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'
															class="link-product-add-cart">Xem Ngay</a>
													</div>
												</div>
												<span class="product-new-top">New</span>

											</div>
											<div class="item-info-product ">
												<h4>
													<a
														href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'>${item.ten_san_pham}</a>
												</h4>
												<div class="info-product-price">
													<c:choose>
														<c:when test="${item.gia_ban == item.gia_khuyen_mai }">
															<span class="item_price"> <fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_ban}" /> ??
															</span>
														</c:when>
														<c:when test="${item.gia_ban != item.gia_khuyen_mai }">
															<span class="item_price"><fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_khuyen_mai} " /> ??</span>
															<del>
																<fmt:formatNumber type="number" groupingUsed="true"
																	value="${item.gia_ban}" />
															</del>
														</c:when>
													</c:choose>
												</div>
												<div
													class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
													<form
														action="<c:url value="/add-cart/${item.id_san_pham}"/>"
														method="get">

														<input type="submit" name="submit" value="Th??m v??o gi???"
															class="button" />
													</form>
												</div>

											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>
					<!--end//tab_one-->

					<!--/tab_two-->
					<div class="tab2">
						<c:if test="${san_pham.size() > 0}">
							<c:forEach var="item" items="${san_pham}">
								<c:if
									test="${(item.trang_thai == 1 && item.san_pham_moi == 1) && (item.id_danh_muc == 8 || item.id_danh_muc == 9 || item.id_danh_muc == 10 || item.id_danh_muc == 11 || item.id_danh_muc == 12 
									|| item.id_danh_muc == 13 || item.id_danh_muc == 14 || item.id_danh_muc == 15 || item.id_danh_muc == 16|| item.id_danh_muc == 26) }">
									<div class="col-md-3 product-men">
										<div class="men-pro-item simpleCart_shelfItem">
											<div class="men-thumb-item">
												<img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-front"> <img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-back">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<a href="#" class="link-product-add-cart">Xem Ngay</a>
													</div>
												</div>
												<span class="product-new-top">New</span>

											</div>
											<div class="item-info-product ">
												<h4>
													<a href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'>${item.ten_san_pham}</a>
												</h4>
												<div class="info-product-price">
													<c:choose>
														<c:when test="${item.gia_ban == item.gia_khuyen_mai }">
															<span class="item_price"> <fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_ban}" /> ??
															</span>
														</c:when>
														<c:when test="${item.gia_ban != item.gia_khuyen_mai }">
															<span class="item_price"><fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_khuyen_mai} " /> ??</span>
															<del>
																<fmt:formatNumber type="number" groupingUsed="true"
																	value="${item.gia_ban}" />
															</del>
														</c:when>
													</c:choose>
												</div>
												<div
													class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
													<form
														action="<c:url value="/add-cart/${item.id_san_pham}"/>"
														method="get">

														<input type="submit" name="submit" value="Th??m v??o gi???"
															class="button" />
													</form>
												</div>

											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>
					<!--end//tab_two-->

					<!--//tab_three-->
					<div class="tab3">

						<c:if test="${san_pham.size() > 0}">
							<c:forEach var="item" items="${san_pham}">
								<c:if
									test="${(item.trang_thai == 1 && item.san_pham_moi == 1) && (item.id_danh_muc == 18 || item.id_danh_muc == 19 || item.id_danh_muc == 20)}">
									<div class="col-md-3 product-men">
										<div class="men-pro-item simpleCart_shelfItem">
											<div class="men-thumb-item">
												<img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-front"> <img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-back">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<a href="#" class="link-product-add-cart">Xem Ngay</a>
													</div>
												</div>
												<span class="product-new-top">New</span>

											</div>
											<div class="item-info-product ">
												<h4>
													<a href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'>${item.ten_san_pham}</a>
												</h4>
												<div class="info-product-price">
													<c:choose>
														<c:when test="${item.gia_ban == item.gia_khuyen_mai }">
															<span class="item_price"> <fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_ban}" /> ??
															</span>
														</c:when>
														<c:when test="${item.gia_ban != item.gia_khuyen_mai }">
															<span class="item_price"><fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_khuyen_mai} " /> ??</span>
															<del>
																<fmt:formatNumber type="number" groupingUsed="true"
																	value="${item.gia_ban}" />
															</del>
														</c:when>
													</c:choose>
												</div>
												<div
													class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
													<form
														action="<c:url value="/add-cart/${item.id_san_pham}"/>"
														method="get">

														<input type="submit" name="submit" value="Th??m v??o gi???"
															class="button" />
													</form>
												</div>

											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>
					<!--end//tab_three-->

					<!--//tab_four-->
					<div class="tab4">

						<c:if test="${san_pham.size() > 0}">
							<c:forEach var="item" items="${san_pham}">
								<c:if
									test="${(item.trang_thai == 1 && item.san_pham_moi == 1) && (item.id_danh_muc == 21 || item.id_danh_muc == 22 || item.id_danh_muc == 23 || item.id_danh_muc == 24 || item.id_danh_muc == 25)}">
									<div class="col-md-3 product-men">
										<div class="men-pro-item simpleCart_shelfItem">
											<div class="men-thumb-item">
												<img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-front"> <img
													src="<c:url value="/assets/user/images/sanpham/${item.hinh_anh_sp}"/>"
													alt="" class="pro-image-back">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<a href="#" class="link-product-add-cart">Xem Ngay</a>
													</div>
												</div>
												<span class="product-new-top">New</span>

											</div>
											<div class="item-info-product ">
												<h4>
													<a href='<c:url value="/chi-tiet-san-pham/${item.meta_name}-${item.id_san_pham}" />'>${item.ten_san_pham}</a>
												</h4>
												<div class="info-product-price">
													<c:choose>
														<c:when test="${item.gia_ban == item.gia_khuyen_mai }">
															<span class="item_price"> <fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_ban}" /> ??
															</span>
														</c:when>
														<c:when test="${item.gia_ban != item.gia_khuyen_mai }">
															<span class="item_price"><fmt:formatNumber
																	type="number" groupingUsed="true"
																	value="${item.gia_khuyen_mai} " /> ??</span>
															<del>
																<fmt:formatNumber type="number" groupingUsed="true"
																	value="${item.gia_ban}" />
															</del>
														</c:when>
													</c:choose>
												</div>
												<div
													class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
													<form
														action="<c:url value="/add-cart/${item.id_san_pham}"/>"
														method="get">

														<input type="submit" name="submit" value="Th??m v??o gi???"
															class="button" />
													</form>
												</div>

											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<div class="clearfix"></div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- //new_arrivals -->

	<!--/grids-->
	<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>MI???N PH?? V???N CHUY???N</h3>
						<p>Mi???n ph?? v???n chuy???n trong n???i th??nh th??nh ph??? H??? Ch?? Minh.</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-headphones" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>H??? TR??? 24/7</h3>
						<p>Gi???i ????p m???i th???c m???c c???a kh??ch h??ng.</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-shopping-bag" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>B???O H??NH 30 NG??Y</h3>
						<p>??p d???ng v???i c??c s???n ph???m l???i t??? ph??a c???a h??ng.</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-gift" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>M?? QU?? T???NG</h3>
						<p>M?? gi???m gi?? h??ng tu???n cho th??nh vi??n.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!--grids-->

</body>