<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
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
                        <a href="index.jsp">购物车列表</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">购物车</a>
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
                            <form action="./shopCar" method="post">
                                <table width="100%" class="CSSearchTbl" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="left">物品名称：</td>
                                        <td class="right"><input id="searchname" name="searchname" type="text"
                                                                 size="16"/>
                                        </td>

                                        <td class="left">物品类别：</td>
                                        <td class="right">
                                            <select id="searchtype" name="searchtype">
                                                <option value="0">全部</option>
                                                <option value="1">文具</option>
                                                <option value="2">电子</option>
                                                    <%-- <option>生活</option>
                                                     <option>工具</option>
                                                     <option>其他</option>--%>
                                            </select>
                                        </td>
                                        <td class="right" colspan="2">

                                            <input type="hidden" name="statenum" value="1"/>
                                            <input type="submit" class="btn btn-primary pull-left col-sm-12 tbl-search"
                                                   data-dismiss="modal" value="开始搜索">


                                            </input>


                                        </td>
                                    </tr>


                                </table>
                            </form>
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
                                                    <input type="checkbox" class="ace"
                                                           onclick="allchecked (this.checked)"
                                                           name="zongcheck"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </th>
                                            <th>物品类型</th>
                                            <th>物品名称</th>
                                            <th class="hidden-480">单个金额</th>
                                            <th class="hidden-480">物品数量</th>
                                            <th class="hidden-480">物品总价</th>
                                            <th class="hidden-480">操作</th>
                                        </tr>
                                        </thead>

                                        <c:forEach var="order" items="${requestScope.orderList}" varStatus="status">

                                        <tbody>
                                        <tr>
                                            <td class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace" name="zicheck"
                                                           id="${order.goodsId}zicheck" value="${order.orderId}"
                                                           onclick="zichecked(this.checked,${order.goodsId} )"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>

                                            <td>
                                                <a href="#">${order.typeName}</a>
                                            </td>
                                            <td id="${order.goodsName}">${order.goodsName}</td>
                                            <td>￥${order.goodsPrice}</td>

                                            <td class="hidden-480">
                                                <button onclick="minus('${order.goodsId}',${order.goodsPrice})"><i
                                                        class="fa fa-minus" aria-hidden="true"></i>
                                                </button>
                                                <input
                                                        id="${order.goodsId}" value="${order.goodsNum}"
                                                        onchange="changeGoodsNum(this.id,this.value,${order.goodsNum},${order.goodsPrice})">


                                                <button onclick="plus(${order.goodsId},${order.goodsPrice})"><i
                                                        class="fa fa-plus" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                            <td id="${order.goodsId}totalPrice" name="goodsTotalPrice"
                                                value="${order.totalPrice}">${order.totalPrice}</td>
                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">

                                                    <button class="btn btn-xs btn-danger"
                                                            onclick="deleteOrder(${order.orderId})">
                                                        删除订单
                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>

                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div><!-- /.span -->
                            </div><!-- /.row -->
                            <div style="text-align: right">
                                <h4><strong>总价:</strong></h4>
                                <h4><strong id="sumtotalprice">0<%--${requestScope.shopCar.totalprice}--%></strong></h4>
                                <h4><strong>元</strong></h4>
                                <button class="btn btn-danger " onclick="generateOrderList()">提交订单</button>
                            </div>

                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.page-content-area -->
            </div><!-- /.page-content -->
        </div>
        <!-- /.main-content -->

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
    function plus(id, price) {

        $.ajax({
            type: "POST",
            url: "./addGoodsInOrder",
            data: {goodsid: id, statenum: 1},
            dataType: "json",
            error: function (result) {
                alert("错了");
            },
            success: function (result) {
                if (result.code == 1000) {

                    $("#" + id).val(parseInt($("#" + id).val()) + 1);

                    $("#" + id + "totalPrice").text(parseFloat($("#" + id + "totalPrice").text()) + price);

                    //document.getElementById(-id).innerText = parseFloat(document.getElementById(-id).innerText) + price;
                    // $("#sumtotalprice").text(parseFloat($("#sumtotalprice").text()) + price);
                    //document.getElementById("sumtotalprice").innerText = parseFloat(document.getElementById("sumtotalprice").innerText) + price;
                } else {
                    alert("抱歉,该货物可购买数量已到达上限.")
                }
            }
        });

    }

    function minus(id, price) {
        $.ajax({
            type: "POST",
            url: "./cutGoodsInOrder",
            data: {goodsid: id, statenum: 1},
            dataType: "json",
            error: function (result) {
                alert("错了");
            },
            success: function (result) {
                if (result.code == 1000) {
                    $("#" + id).val(parseInt($("#" + id).val()) - 1);
                    $("#" + id + "totalPrice").text(parseFloat($("#" + id + "totalPrice").text()) - price);
                    //$("#sumtotalprice").text(parseFloat($("#sumtotalprice").text()) - price);
                    // document.getElementById(id).innerText = parseInt(document.getElementById(id).innerText) - 1;
                    //document.getElementById(-id).innerText = parseFloat(document.getElementById(-id).innerText) - price;
                    //document.getElementById("sumtotalprice").innerText = parseFloat(document.getElementById("sumtotalprice").innerText) - price;

                } else {
                    alert("已经到达最小值,如果不需要该物品请直接删除订单");
                }
            }
        });
    }

    function deleteOrder(orderid) {
        if (window.confirm("确定要删除吗?")) {
            window.location.href = "deleteOrder?orderid=" + orderid;
        }

    }

    function changeGoodsNum(id, goodsnum, oldnum, price) {
        if (goodsnum / 1 != goodsnum || goodsnum < 1) {
            alert("请输入正确的数字")
            $("#" + id).val(oldnum);
        }
        else {
            $.ajax({
                type: "POST",
                url: "./changeGoodsNumInOrder",
                data: {goodsid: id, goodsnum: goodsnum, statenum: 1},
                dataType: "json",
                error: function (result) {
                    alert("错了");
                },
                success: function (result) {
                    if (result.code == 1000) {
                        $("#" + id).val(goodsnum);
                        $("#" + id + "totalPrice").text(parseFloat($("#" + id + "totalPrice").text()) + (goodsnum - oldnum) * price);
                        // $("#sumtotalprice").text(parseFloat($("#sumtotalprice").text()) + (goodsnum - oldnum) * price);
                    } else {
                        alert("输入的货物数目大于现有库存总数,请检查后重新输入");
                        $("#" + id).val(oldnum);
                    }
                }
            })
        }
    }

    //全选操作
    function allchecked(state) {
        $("[name = zicheck]:checkbox").prop("checked", state);

        var tid;
        var goodstotalprice = 0;
        if (state == true) {

            var inputArrs = $("[name = 'goodsTotalPrice']");
            for (var i = 0; i < inputArrs.length; i++) {
                tid = inputArrs[i].id;
                goodstotalprice = goodstotalprice + parseFloat($("#" + tid).text());
            }
        }
        $("#sumtotalprice").text(goodstotalprice);


    }

    function zichecked(state, id) {
        if (state == true) {
            $("#sumtotalprice").text(parseFloat($("#sumtotalprice").text()) + parseFloat($("#" + id + "totalPrice").text()));
        } else {
            $("#sumtotalprice").text(parseFloat($("#sumtotalprice").text()) - parseFloat($("#" + id + "totalPrice").text()));
            $("[name = zongcheck]:checkbox").prop("checked", false);
        }
    }

    //页面提交.确定选中的订单以及确定最后订单的总价格
    function generateOrderList() {
        bootbox.dialog({
            message: "确认要提交订单吗",
            buttons: {
                "success": {
                    "label": "确定并关闭",
                    "className": "btn-sm btn-danger",
                    "callback": function () {
                        var order = $("[name = zicheck]:checked");
                        var chooseorderid = new Array();
                        order.each(function () {
                            chooseorderid.push($(this).val());
                        });
                      var totalPrice =   $("#sumtotalprice").text();
                        $.ajax({
                            type: "POST",
                            url: "./putChooseOrder",
                            data: {chooseorderid: chooseorderid,totalprice:totalPrice},
                            dataType: "json",
                            error: function (result) {
                                alert("错了");
                            },
                            success: function (result) {
                                if (result.code == 1000) {
                                    alert("成功结算订单.")
                                    parent.location.href = './orderList';
                                } else {
                                    alert(result.msg)
                                    alert("输入的货物数目大于现有库存总数,请检查后重新输入");

                                }
                            }
                        });
                        /* $.ajax({
                             type: "POST",
                             url:
                             data: encodeURI(""),
                             dataType:'json',
                             cache: false,
                             success: function(data){
                                 $("#"+warn_name).jqGrid("delRowData",rowid);
                                 var count = $("#"+warn_name+warn_type).html();
                                 $("#"+warn_name+warn_type).html(count-1);
                             }
                         });*/
                    }

                },
                "danger": {
                    "label": "取消提交",
                    "className": "btn-sm btn-primary",
                    callback: function () {
                        alert("hh");
                    }
                },
            }
        });
    }

</script>
</body>
</html>
