<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"></jsp:include>
    <![endif]-->
    <style type="text/css">
        .CSSearchTbl {
            border: 1px #008CD4 solid;
        }

        .CSSearchTbl thead {
        }

        .CSSearchTbl thead tr {
        }

        .CSSearchTbl thead tr th {
            text-align: left;
            padding-left: 10px;
        }

        .CSSearchTbl tbody {
        }

        .CSSearchTbl tbody tr {
        }

        .CSSearchTbl tbody tr td {
            padding: 10px;
        }

        .CSSearchTbl tbody tr td.right {
            text-align: left;
        }

        .CSSearchTbl tbody tr td.left {
            text-align: right;
        }

        .table-responsive {
            display: none;
        }
    </style>
</head>

<script type="text/javascript">
    $(function () {
        $("#searchOrder").addClass("active");
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
        <div class="breadcrumbs" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="index.jsp">UI库首页</a>
                </li>
                <li>
                    <a href="javascript:void(0)">表格</a>
                </li>
                <li>
                    <a href="elements.html">简单通用表格</a>
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
        <div class="page-content">

            <!-- /section:settings.box -->
            <div class="page-content-area">
                <div>
                    <div class="col-xs-12">

                        <div class="table-header">
                            购物车管理
                        </div>

                        <table width="100%" class="CSSearchTbl" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="left">订单编号：</td>
                                <td class="right"><input type="text" size="16"/></td>

                                <td class="left">按月查询</td>
                                <td class="right">
                                    <select>
                                        <option>全部</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                    </select>
                                </td>
                                <div class="col-xs-12 col-sm-3 left"></div>
                                <td class="right" colspan="2">
                                    <button class="btn btn-primary pull-left col-sm-12 tbl-search"
                                            data-dismiss="modal">
                                        开始搜索
                                        <i class="ace-icon fa fa-search"></i>
                                    </button>
                                </td>
                            </tr>

                        </table>


                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="hr hr-18 dotted hr-double"></div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>

                                        <th>订单编号</th>
                                        <th>下单人</th>
                                        <th class="hidden-480">订单时间</th>
                                        <th class="hidden-480">用户金额</th>
                                        <th class="hidden-480">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>


                                        <td>
                                            <a href="#">201709091</a>
                                        </td>
                                        <td>季伟男</td>
                                        <td>2017-10-10 11：22：00</td>

                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">138元</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>


                                        <td>
                                            <a href="#">201709092</a>
                                        </td>
                                        <td>季伟男</td>
                                        <td>2017-10-11 11：22：00</td>

                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">56元</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>


                                        <td>
                                            <a href="#">201709093</a>
                                        </td>
                                        <td>季伟男</td>
                                        <td>2017-10-12 11：22：00</td>

                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">72元</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>


                                        <td>
                                            <a href="#">201709094</a>
                                        </td>
                                        <td>季伟男</td>
                                        <td>2017-12-03 11：22：00</td>

                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">109元</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-success">
                                                    <i class="ace-icon fa fa-check bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div><!-- /.span -->
                        </div><!-- /.row -->
                        <div class="col-sm-8">
                            <div>
                                <ul class="pagination">
                                    <li class="disabled">
                                        <a href="#">首页</a>
                                    </li>
                                    <li class="disabled">
                                        <a href="#">
                                            <i class="ace-icon fa fa-angle-double-left"></i>
                                        </a>
                                    </li>


                                    <li class="active">
                                        <a href="#">1</a>
                                    </li>

                                    <li>
                                        <a href="#">2</a>
                                    </li>

                                    <li>
                                        <a href="#">3</a>
                                    </li>

                                    <li>
                                        <a href="#">4</a>
                                    </li>

                                    <li>
                                        <a href="#">5</a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="ace-icon fa fa-angle-double-right"></i>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="#">尾页</a>
                                    </li>
                                </ul>
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
    </div>
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

<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<script type="text/javascript"></script>


</body>
</html>
