<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>售价单 - 统一开发平台 - UI库</title>
    <meta name="description" content="Restyling jQuery UI Widgets and Elements"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-fonts.css"/>
    <link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style"/>
    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->
    <script src="assets/js/ace-extra.min.js"></script>
    <!--[if lte IE 8]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>

    <![endif]-->
</head>
<script type="text/javascript">
    $(function () {
        $("#chooseGoodsActive").addClass("active");
        $("#buyPart").addClass("active open");
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
                <li>
                    <a href="javascript:void(0)">购物</a>
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


                    <c:forEach var="goods" items="${requestScope.pagebean.list }"
                               varStatus="status">


                        <div class="col-xs-6 col-sm-3 pricing-box">
                            <div class="widget-box">
                                <div class="widget-header header-color-orange"
                                     style="background: #ffc657;border-color: #fff;">
                                    <h5 class="bigger lighter" style="color:#333">所属类型编号:${goods.typeNum }</h5>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main">
                                        <ul class="list-unstyled spaced2">
                                            <li style="text-align: center">
                                                <a href="assets/images/carsShow/shoutao.png" data-rel="colorbox">
                                                    <img alt="150x150" width="150" height="150"
                                                         src="assets/images/carsShow/${goods.picUrl}"/>
                                                </a>
                                            </li>
                                        </ul>
                                        <hr/>
                                        <div class="price">
                                            ￥${goods.price }
                                            <small>/${goods.goodsName }/库存:${goods.goodsNum}</small>

                                        </div>
                                    </div>
                                    <div onclick="putInToOrder(${goods.goodsId})" id = "${goods.goodsId}">
                                        <a href="#" class="btn btn-block btn-warning">
                                            <i class="icon-shopping-cart bigger-110"></i>
                                            <span   >马上预定</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>

                    <br><br>
                    <div class="modal-footer no-margin-top">
                        <ul class="pagination pull-right no-margin">
                            共有[${requestScope.pagebean.totalrecord}]条记录
                            <input type="text" id="pagesize" value="${requestScope.pagebean.pagesize}"
                                   style="width: 30px" maxlength="2"
                                   onchange="changesize(this.value,${requestScope.pagebean.pagesize})">
                            每页[${requestScope.pagebean.pagesize}]条,共有[${requestScope.pagebean.totalpage}]页,当前为第[${requestScope.pagebean.currentpage}]页

                            <c:if test="${requestScope.pagebean.currentpage > 1}">


                                <li><a href="javascript:void(0)"
                                       onclick="gotopage(${requestScope.pagebean.previouspage})">上一页</a></li>
                            </c:if>

                            <c:forEach var="pagenum" items="${requestScope.pagebean.pagebar}" varStatus="status">
                                <li><a href="javascript:void(0)" onclick="gotopage(${pagenum})">${pagenum}</a></li>
                            </c:forEach>

                            <c:if test="${requestScope.pagebean.currentpage < requestScope.pagebean.totalpage}">
                                <li><a href="javascript:void(0)"
                                       onclick="gotopage (  ${requestScope.pagebean.nextpage} )">下一页</a></li>
                            </c:if>


                        </ul>
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
</div>
    <!-- basic scripts -->


    <!--[if !IE]> -->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");

        function changesize(pagesize, oldvalue) {
            if (pagesize / 1 != pagesize || pagesize < 1) {
                alert("请输入正确的数字");
                document.getElementById("pagesize").value = oldvalue;
            } else {
                window.location.href = './listgoods2PageSize?pagesize=' + pagesize;
            }
        }

        function gotopage(pagenum) {
            var pagesize = $('#pagesize').val();
            window.location.href = './listgoods2gotopage?pagenum=' + pagenum + '&pagesize=' + pagesize;
        }

        function putInToOrder(goodsid){

           var goodsId = goodsid;
           var userId = ${sessionScope.user.id};

            $.ajax({
                type: "POST",
                url: "./putInTheOrder",
                data:{userid:userId,goodsid:goodsid},

                dataType: "json",
                error: function (result) {
                    alert("错了");
                },
                success: function (result) {
                    alert(result.msg);
                }
            });
            return false;
        }

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
        jQuery(function ($) {


            $("#bootbox-options").on(ace.click_event, function () {
                bootbox.dialog({
                    message: "<div class='row'><div class='col-sm-12'><span class='bigger-110'>请填写购买个数：</span><input id='heihei' type='text' placeholder='只能填写数字' /></div></div><hr />",
                    buttons:
                        {
                            "success":
                                {
                                    "label": "<i class='ace-icon fa fa-check'></i> 确定",
                                    "className": "btn-sm btn-success",
                                    "callback": function () {
                                        bootbox.dialog({
                                            message: "加入购物车成功，请及时到购物车完成结算",
                                            buttons: {
                                                "success": {
                                                    "label": "确定并关闭",
                                                    "className": "btn-sm btn-primary"
                                                }
                                            }
                                        });
                                    }
                                }
//                        "danger" :
//                            {
//                                "label" : "确定删除",
//                                "className" : "btn-sm btn-danger",
//                                "callback": function() {
//                                    //Example.show("uh oh, look out!");
//                                }
//                            },
//                        "click" :
//                            {
//                                "label" : "重置一下",
//                                "className" : "btn-sm btn-primary",
//                                "callback": function() {
//                                    //Example.show("Primary button");
//                                }
//                            },
//                        "button" :
//                            {
//                                "label" : "这TM就只是个按钮而已",
//                                "className" : "btn-sm"
//                            }
                    }
                });
            });

        });
    </script>

</body>
</html>
