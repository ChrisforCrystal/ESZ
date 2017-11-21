<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"></jsp:include>
    <![endif]-->
</head>
<script type="text/javascript">
    $(function () {
        $("#orderList").addClass("active");
        $("#searchOrderList").addClass("active open");
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
                    <a href="index.jsp">UI库首页</a>
                </li>
                <li>
                    <a href="javascript:void(0)">订单页</a>
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
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="widget-box transparent invoice-box">
                            <div class="widget-header widget-header-large">
                                <h3 class="grey lighter pull-left position-relative">
                                    <i class="icon-leaf green"></i>
                                    订单详情
                                </h3>

                                <div class="widget-toolbar no-border invoice-info">
                                    <span class="invoice-info-label">订单号:</span>
                                    <span class="red">#121212</span>

                                    <br/>
                                    <span class="invoice-info-label">订单日期:</span>
                                    <span class="blue">03/03/2013</span>
                                </div>

                                <div class="widget-toolbar hidden-480">
                                    <a href="#">
                                        <i class="icon-print"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main padding-24">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
                                                    <b>机票信息</b>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <ul class="list-unstyled spaced">
                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        地址：西安市邮电大学
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        邮编：710121
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        省市陕西省西安市
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        订单状态：已支付
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /span -->

                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
                                                    <b>用户信息</b>
                                                </div>
                                            </div>

                                            <div>
                                                <ul class="list-unstyled  spaced">
                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        姓名：季伟男
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        英文名：Chris
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        手机号：153****2645
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        身份号码：610429*****1717
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /span -->
                                    </div><!-- row -->

                                    <div class="space"></div>

                                    <div>
                                        <table class="table table-striped table-bordered">
                                            <thead>
                                            <tr>
                                                <th class="center">ID</th>
                                                <th>购买产品</th>
                                                <th class="hidden-xs">产品单价</th>
                                                <th class="hidden-480">数量</th>
                                                <th>总价</th>
                                            </tr>
                                            </thead>

                                            <tbody>
                                            <tr>
                                                <td class="center">1</td>

                                                <td>
                                                    钢笔
                                                </td>
                                                <td class="hidden-xs">
                                                    20元
                                                </td>
                                                <td class="hidden-480"> 1</td>
                                                <td>￥20</td>
                                            </tr>

                                            <tr>
                                                <td class="center">2</td>

                                                <td>
                                                    黑色中性笔
                                                </td>
                                                <td class="hidden-xs">
                                                    3元
                                                </td>
                                                <td class="hidden-480"> 10支</td>
                                                <td>30元</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="hr hr8 hr-double hr-dotted"></div>

                                    <div class="row">
                                        <div class="col-sm-5 pull-right">
                                            <h4 class="pull-right">
                                                订单总价 :
                                                <span class="red">￥50</span>
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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

</body>
</html>
