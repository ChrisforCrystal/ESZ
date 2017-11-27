<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>

	<script type="text/javascript">
        $(function () {
            $("#userGallery").addClass("active");
        })

	</script>
	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<jsp:include page="nav.jsp"></jsp:include>
		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">
				<jsp:include page="sidebar.jsp"></jsp:include>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="index.jsp">相册</a>
						</li>
						<li>
							<a href="javascript:void(0)">相册页</a>
						</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="请输入关键字 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- /.nav-search -->
				</div>


				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">

					<!-- /section:settings.box -->
					<div class="page-content-area">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row-fluid">
									<ul class="ace-thumbnails">
										<li>
											<a href="assets/images/carsShow/shoutao.png" title="Photo Title" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/shoutao.png"  width="150" height="150" />
											</a>

											<div class="tools">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/carsShow/shuqian.png" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/shuqian.png" width="150" height="150" />
												<div class="text">
													<div class="inner">带遮罩层的图片例子</div>
												</div>
											</a>
										</li>

										<li>
											<a href="assets/images/carsShow/shujuxian.png" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/shujuxian.png"  width="150" height="150" />
												<div class="text">
													<div class="inner">带遮罩层和功能图标的图片例子</div>
												</div>
											</a>

											<div class="tools tools-bottom">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-4.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/jiaoshui.png"  width="150" height="150" />
											</a>

											<div class="tools tools-top">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<div>
												<img alt="150x150" src="assets/images/carsShow/jiaodai.png" width="150" height="150" />
												<div class="text">
													<div class="inner">
														<span>带功能图标的图片例子</span>

														<br />
														<a href="assets/images/gallery/image-5.jpg" data-rel="colorbox">
															<i class="icon-zoom-in"></i>
														</a>

														<a href="#">
															<i class="icon-user"></i>
														</a>

														<a href="#">
															<i class="icon-share-alt"></i>
														</a>
													</div>
												</div>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-6.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/bidai.png" width="150" height="150" />
											</a>

											<div class="tools tools-right">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-1.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/zhongxing.png"  width="150" height="150"/>
											</a>

											<div class="tools">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/carsShow/gangbi.png" width="150" height="150" />
											</a>

											<div class="tools tools-top">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>
									</ul>
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->

			<div class="footer">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

	</body>
</html>
