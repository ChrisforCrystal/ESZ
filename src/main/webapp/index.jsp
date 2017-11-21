<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./head.jsp"></jsp:include>

</head>
<script type="text/javascript">
    $(function() {
       $("#indexActive").addClass("active");
    })

</script>
    <body class="no-skin">
    <!-- #section:basics/navbar.layout -->
    <div id="navbar" class="navbar navbar-default">
        <jsp:include page="./nav.jsp"></jsp:include>
    </div>
    <!-- /section:basics/navbar.layout -->
    <div class="main-container" id="main-container">

    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar responsive">
        <jsp:include page="./sidebar.jsp"></jsp:include>
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

            <!-- /section:basics/content.searchbox -->
        </div>

        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area">

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
                                <th>航班类型</th>
                                <th>客舱级别</th>
                                <th class="hidden-480">行李数量上限</th>
                                <th>

                                    每件尺寸限制
                                </th>
                                <th class="hidden-480">
                                    <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                    每件重量上限
                                </th>
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
                                    <a href="#">国内航班</a>
                                </td>
                                <td>头等舱</td>
                                <td class="hidden-480">2件</td>
                                <td>A+B+C<145cm</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">5千克</span>
                                </td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="">
                                            <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-danger">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-warning">
                                            <i class="ace-icon fa fa-flag bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-success">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
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
                                    <a href="#">国内航班</a>
                                </td>
                                <td>头等舱</td>
                                <td class="hidden-480">2件</td>
                                <td>A+B+C<145cm</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-success">5千克</span>
                                </td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="">
                                            <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-danger">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-warning">
                                            <i class="ace-icon fa fa-flag bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-success">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
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
                                    <a href="#">国内航班</a>
                                </td>
                                <td>头等舱</td>
                                <td class="hidden-480">2件</td>
                                <td>A+B+C<145cm</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-inverse arrowed-in">5千克</span>
                                </td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="">
                                            <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-danger">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-warning">
                                            <i class="ace-icon fa fa-flag bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-success">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
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
                                    <a href="#">国内航班</a>
                                </td>
                                <td>头等舱</td>
                                <td class="hidden-480">2件</td>
                                <td>A+B+C<145cm</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning arrowed-right">5千克</span>
                                </td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="">
                                            <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-danger">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-warning">
                                            <i class="ace-icon fa fa-flag bigger-120"></i>
                                        </button>

                                        <button class="btn btn-xs btn-success">
                                            <i class="ace-icon fa fa-check bigger-120"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>


                            </tbody>
                        </table>
                        <div class="modal-footer no-margin-top">
                            <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                <i class="ace-icon fa fa-times"></i>
                                关闭
                            </button>

                            <ul class="pagination pull-right no-margin">
                                <li class="prev disabled">
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

                                <li class="next">
                                    <a href="#">
                                        <i class="ace-icon fa fa-angle-double-right"></i>
                                    </a>
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
</div><!-- /.main-container -->

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
<!--[if lte IE 8]>
<script src="assets/js/excanvas.min.js"></script>
<![endif]-->
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

</body>
</html>
