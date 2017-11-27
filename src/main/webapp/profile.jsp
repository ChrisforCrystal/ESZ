<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"></jsp:include>

	</head>
<script type="text/javascript">
    $(function() {
        $("#userProfle").addClass("active");
        $("#profileList").addClass("active open");
    })

</script>
<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default">
    <jsp:include page="nav.jsp"></jsp:include>
</div>
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
                    <a href="index.jsp">用户信息</a>
                </li>
                <li>
                    <a href="javascript:void(0)">用户个人资料</a>
                </li>
            </ul><!-- /.breadcrumb -->

            <!-- #section:basics/content.searchbox -->
            <div class="nav-search" id="nav-search">
                <form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="请输入关键字 ..." class="nav-search-input"
                                       id="nav-search-input" autocomplete="off"/>
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
                        <div id="user-profile-2" class="user-profile">
                            <div class="tabbable">
                                <ul class="nav nav-tabs padding-18">
                                    <li class="active">
                                        <a data-toggle="tab" href="#home">
                                            <i class="green icon-user bigger-120"></i>
                                            详细资料
                                        </a>
                                    </li>



                                    <li>
                                        <a data-toggle="tab" href="#pictures">
                                            <i class="pink icon-picture bigger-120"></i>
                                            个人相册
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content no-border padding-24">
                                    <div id="home" class="tab-pane in active">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-3 center">
															<span class="profile-picture">
																<img class="editable img-responsive" alt="Alex's Avatar"
                                                                     id="avatar2" src="assets/avatars/profile-pic.jpg"/>
															</span>

                                                <div class="space space-4"></div>


                                                <a href="#" class="btn btn-sm btn-block btn-primary">
                                                    <i class="fa fa-odnoklassniki" ></i>
                                                    <span class="bigger-110">修改信息</span>
                                                </a>

                                                <a href="#" class="btn btn-sm btn-block btn-primary" onclick="changePassword()">
                                                    <i class="fa fa-odnoklassniki" ></i>
                                                    <span class="bigger-110">修改密码</span>
                                                </a>
                                            </div><!-- /span -->

                                            <div class="col-xs-12 col-sm-9">
                                                <h4 class="blue">
                                                    <span class="middle">洺皓</span>

                                                    <span class="label label-purple arrowed-in-right">
																	<i class="icon-circle smaller-80 align-middle"></i>
																	在线
																</span>
                                                </h4>

                                                <div class="profile-user-info">
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 用户名</div>

                                                        <div class="profile-info-value">
                                                            <span>329430678</span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 姓名</div>

                                                        <div class="profile-info-value">
                                                            <span>洺皓</span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 性别</div>

                                                        <div class="profile-info-value">
                                                            <span>男</span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 年龄</div>

                                                        <div class="profile-info-value">
                                                            <span>18</span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 电话</div>

                                                        <div class="profile-info-value">
                                                            <span>15309282654</span>
                                                        </div>

                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 邮箱</div>

                                                        <div class="profile-info-value">
                                                            <span>329430003@qq.com</span>
                                                        </div>

                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 地址</div>

                                                        <div class="profile-info-value">
                                                            <i class="icon-map-marker light-orange bigger-110"></i>
                                                            <span>陕西省西安市,</span>
                                                            <span>西安邮电大学</span>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="hr hr-8 dotted"></div>


                                            </div><!-- /span -->
                                        </div><!-- /row-fluid -->

                                        <div class="space-20"></div>

                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6">
                                                <div class="widget-box transparent">
                                                    <div class="widget-header widget-header-small">
                                                        <h4 class="smaller">
                                                            <i class="icon-check bigger-110"></i>
                                                            自我介绍
                                                        </h4>
                                                    </div>

                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <p>
                                                                我是一名怀着远大理想的程序员
                                                            </p>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xs-12 col-sm-6">
                                                <div class="widget-box transparent">
                                                    <div class="widget-header widget-header-small header-color-blue2">
                                                        <h4 class="smaller">
                                                            <i class="icon-lightbulb bigger-120"></i>
                                                            技能专长
                                                        </h4>
                                                    </div>

                                                    <div class="widget-body">
                                                        <div class="widget-main padding-16">
                                                            <div class="clearfix">
                                                                <div class="grid3 center">
                                                                    <div class="easy-pie-chart percentage"
                                                                         data-percent="45" data-color="#CA5952">
                                                                        <span class="percent">45</span>%
                                                                    </div>

                                                                    <div class="space-2"></div>
                                                                    平面设计
                                                                </div>

                                                                <div class="grid3 center">
                                                                    <div class="center easy-pie-chart percentage"
                                                                         data-percent="90" data-color="#59A84B">
                                                                        <span class="percent">90</span>%
                                                                    </div>

                                                                    <div class="space-2"></div>
                                                                    HTML5 & CSS3
                                                                </div>

                                                                <div class="grid3 center">
                                                                    <div class="center easy-pie-chart percentage"
                                                                         data-percent="80" data-color="#9585BF">
                                                                        <span class="percent">80</span>%
                                                                    </div>

                                                                    <div class="space-2"></div>
                                                                    Javascript/jQuery
                                                                </div>
                                                            </div>

                                                            <div class="hr hr-16"></div>

                                                            <div class="profile-skills">
                                                                <div class="progress">
                                                                    <div class="progress-bar" style="width:80%">
                                                                        <span class="pull-left">HTML5 & CSS3</span>
                                                                        <span class="pull-right">80%</span>
                                                                    </div>
                                                                </div>

                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-success"
                                                                         style="width:72%">
                                                                        <span class="pull-left">Javascript & jQuery</span>

                                                                        <span class="pull-right">72%</span>
                                                                    </div>
                                                                </div>

                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-purple"
                                                                         style="width:70%">
                                                                        <span class="pull-left">PHP & MySQL</span>

                                                                        <span class="pull-right">70%</span>
                                                                    </div>
                                                                </div>

                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-warning"
                                                                         style="width:50%">
                                                                        <span class="pull-left">Wordpress</span>

                                                                        <span class="pull-right">50%</span>
                                                                    </div>
                                                                </div>

                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-danger"
                                                                         style="width:35%">
                                                                        <span class="pull-left">Photoshop</span>

                                                                        <span class="pull-right">35%</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- #home -->



                                    <div id="pictures" class="tab-pane">
                                        <ul class="ace-thumbnails">
                                            <li>
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-1.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">Sample Caption on Hover</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-2.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-3.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-4.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-5.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-6.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-1.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                                <a href="#" data-rel="colorbox">
                                                    <img alt="150x150" src="assets/images/gallery/thumb-2.jpg"/>
                                                    <div class="text">
                                                        <div class="inner">带遮罩提示的相册例子</div>
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
                                        </ul>
                                    </div><!-- /#pictures -->
                                </div>
                            </div>
                        </div>
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
    window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>
<script src="assets/js/bootbox.min.js"></script>
<script type="text/javascript">
        function changePassword() {
            bootbox.dialog({
                message: "<div class='row'><div class='col-sm-12'><span class='bigger-110'>请输入原密码：</span><input type='password' /></div></div><hr /><div class='row'><div class='col-sm-12'><span class='bigger-110'>请输入新密码：</span><input type='password' /></div></div>",
                buttons:
                    {
                        "success" :
                            {
                                "label" : "<i class='ace-icon fa fa-check'></i> 确定",
                                "className" : "btn-sm btn-success",
                                "callback": function() {
                                    //Example.show("great success");
                                    bootbox.dialog({
                                        message: "修改密码成功！"
                                    });
                                }
                            },
                        "danger" :
                            {
                                "label" : "返回",
                                "className" : "btn-sm btn-danger",
                                "callback": function() {
                                    //Example.show("uh oh, look out!");
                                }
                            }

                    }
            });
        }    
</script>
</body>
</html>
