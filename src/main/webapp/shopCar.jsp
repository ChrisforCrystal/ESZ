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
        $("#shopChar").addClass("active");
        $("#shopCarList").addClass("active open");
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
                                <td class="left">物品名称：</td>
                                <td class="right"><input type="text" size="16"/></td>

                                <td class="left">物品类别：</td>
                                <td class="right">
                                    <select>
                                        <option>文具</option>
                                        <option>电子</option>
                                        <option>生活</option>
                                        <option>工具</option>
                                        <option>其他</option>
                                    </select>
                                </td>
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
                    <br>
                    <div class="hr hr-18 dotted hr-double"></div>
                    <br>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="position-relative">
                                                <input type="checkbox" class="ace"/>
                                                <span class="lbl"></span>
                                            </label>
                                        </th>
                                        <th>物品类型</th>
                                        <th>物品名称</th>
                                        <th class="hidden-480">单个金额</th>
                                        <th class="hidden-480">物品数量</th>
                                        <th class="hidden-480">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="center">
                                            <label class="position-relative">
                                                <input type="checkbox" class="ace"/>
                                                <span class="lbl"></span>
                                            </label>
                                        </td>

                                        <td>
                                            <a href="#">文具</a>
                                        </td>
                                        <td>中性笔</td>
                                        <td>￥2</td>

                                        <td class="hidden-480">
                                            <button onclick="minus()"><i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                            <span class="label label-sm label-warning">4</span>
                                            <button onclick="plus()"><i class="fa fa-plus" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="center">
                                            <label class="position-relative">
                                                <input type="checkbox" class="ace"/>
                                                <span class="lbl"></span>
                                            </label>
                                        </td>

                                        <td>
                                            <a href="#">文具</a>
                                        </td>
                                        <td>钢笔</td>
                                        <td>￥20</td>

                                        <td class="hidden-480">
                                            <button onclick="minus()"><i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                            <span class="label label-sm label-warning">5</span>
                                            <button onclick="plus()"><i class="fa fa-plus" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="center">
                                            <label class="position-relative">
                                                <input type="checkbox" class="ace"/>
                                                <span class="lbl"></span>
                                            </label>
                                        </td>

                                        <td>
                                            <a href="#">文具</a>
                                        </td>
                                        <td>圆珠笔</td>
                                        <td>￥3</td>

                                        <td class="hidden-480">
                                            <button onclick="minus()"><i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                            <span class="label label-sm label-warning">5</span>
                                            <button onclick="plus()"><i class="fa fa-plus" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="center">
                                            <label class="position-relative">
                                                <input type="checkbox" class="ace"/>
                                                <span class="lbl"></span>
                                            </label>
                                        </td>

                                        <td>
                                            <a href="#">电子</a>
                                        </td>
                                        <td>USB3.0数据线</td>
                                        <td>￥15</td>

                                        <td class="hidden-480">
                                            <button onclick="minus()"><i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                            <span class="label label-sm label-warning">1</span>
                                            <button onclick="plus()"><i class="fa fa-plus" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs btn-group">

                                                <button class="btn btn-xs btn-danger">
                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div><!-- /.span -->
                        </div><!-- /.row -->
                        <div style="text-align: right">
                            <h4><strong>总价 : 138 元</strong></h4>
                            <button class="btn btn-danger " onclick="generateOrderList()">提交订单</button>
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

<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>
<script src="assets/js/bootbox.min.js"></script>
<script type="text/javascript"></script>


<script type="text/javascript">
    function plus() {
        $("#orderNum").val($("#orderNum").val + 1);
    }

    function minus() {
        $("#orderNum").val($("#orderNum").val - 1);
    }

    function generateOrderList() {
        bootbox.dialog({
            message: "确认要提交订单吗",
            buttons: {
                "success": {
                    "label": "确定并关闭",
                    "className": "btn-sm btn-danger"
                },
                "danger": {
                    "label": "取消提交",
                    "className": "btn-sm btn-primary",
                },
            }
        });
    }

</script>
</body>
</html>
