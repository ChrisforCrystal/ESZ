<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>向导提示&验证 - 表单 - 统一开发平台 - UI库</title>
    <meta name="description" content="Restyling jQuery UI Widgets and Elements" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/select2.css" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/ace-fonts.css" />
    <link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css" />
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->
    <script src="assets/js/ace-extra.min.js"></script>
    <!--[if lte IE 8]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>
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
                    <a href="index.jsp">用户信息</a>
                </li>
                <li>
                    <a href="javascript:void(0)">信息修改</a>
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

                        <div class="widget-box">
                            <div class="widget-header widget-header-blue widget-header-flat">
                                <h4 class="widget-title lighter">用户信息修改</h4>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main">
                                    <!-- #section:plugins/fuelux.wizard -->
                                    <div id="fuelux-wizard" data-target="#step-container">
                                        <!-- #section:plugins/fuelux.wizard.steps -->

                                        <!-- /section:plugins/fuelux.wizard.steps -->
                                    </div>

                                    <hr/>

                                    <!-- #section:plugins/fuelux.wizard.container -->
                                    <div class="step-content pos-rel" id="step-container">
                                        <div class="step-pane active" id="step1">
                                            <h3 class="lighter block blue">请修改以下信息</h3>


                                            <form class="form-horizontal " id="validation-form" method="get">
                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="email">Email:</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <input type="email" name="email" id="email" value="${sessionScope.user.userEmail}"
                                                                   readonly="readonly"
                                                                   class="col-xs-12 col-sm-6"
                                                            />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="space-2"></div>
                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">地址:</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <input type="text" value="${sessionScope.user.address}"
                                                                   name="update_address"
                                                                   class="col-xs-12 col-sm-4"/>


                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">年龄:</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <input type="text" name="updata_age" id="age"
                                                                   class="col-xs-12 col-sm-4" value="${sessionScope.user.age}"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="hr hr-dotted"></div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="name">姓名:</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <input type="text" id="name" name="name" value="${sessionScope.user.nick}"
                                                                   disabled="disabled"
                                                                   class="col-xs-12 col-sm-5"/>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="space-2"></div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="phone">手机号码:</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-phone"></i>
																	</span>

                                                            <input type="tel" id="phone" name="phone" value="${sessionScope.user.userPhone}"
                                                                   disabled="disabled" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="space-2"></div>


                                                <div class="hr hr-dotted"></div>


                                                <div class="space-2"></div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">性别</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div>
                                                            <label class="line-height-1 blue">
                                                                <input name="gender" value="1" type="radio"
                                                                       class="ace"/>
                                                                <span class="lbl"> 男</span>
                                                            </label>
                                                        </div>

                                                        <div>
                                                            <label class="line-height-1 blue">
                                                                <input name="gender" value="2" type="radio"
                                                                       class="ace"/>
                                                                <span class="lbl"> 女</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="hr hr-dotted"></div>
                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="comment">自我介绍</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <textarea class="input-xlarge" name="comment"
                                                                      id="comment" >${sessionScope.user.introduceSelf}</textarea>
                                                        </div>
                                                    </div>
                                                </div>




                                            </form>
                                        </div>

                                    </div>

                                    <!-- /section:plugins/fuelux.wizard.container -->
                                    <hr/>
                                    <div class="wizard-actions">
                                        <!-- #section:plugins/fuelux.wizard.buttons -->


                                        <button class="btn btn-success btn-next" onclick="finishModify()" >
                                            完成
                                            <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                        </button>

                                        <!-- /section:plugins/fuelux.wizard.buttons -->
                                    </div>

                                    <!-- /section:plugins/fuelux.wizard -->
                                </div><!-- /.widget-main -->
                            </div><!-- /.widget-body -->
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
<script src="assets/js/fuelux/fuelux.wizard.min.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/additional-methods.min.js"></script>
<script src="assets/js/bootbox.min.js"></script>
<script src="assets/js/jquery.maskedinput.min.js"></script>
<script src="assets/js/select2.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $("#userProfileEdit").addClass("active");
        $("#profileList").addClass("active open");
        $('[data-rel=tooltip]').tooltip();

        $(".select2").css('width', '200px').select2({allowClear: true})
            .on('change', function () {
                $(this).closest('form').validate().element($(this));
            });


        var $validation = false;
        $('#fuelux-wizard')
            .ace_wizard({
                //step: 2 //optional argument. wizard will jump to step "2" at first
            })
            .on('change', function (e, info) {
                if (info.step == 1 && $validation) {
                    if (!$('#validation-form').valid()) return false;
                }
            })
            .on('finished', function (e) {
//                bootbox.dialog({
//                    message: "你的订单已经生成，请注意出票和登机时间。",
//                    buttons: {
//                        "success": {
//                            "label": "确定并关闭",
//                            "className": "btn-sm btn-primary"
//                        }
//                    }
//                });
            }).on('stepclick', function (e) {
            //e.preventDefault();//this will prevent clicking and selecting steps
        });


        //jump to a step
        $('#step-jump').on('click', function () {
            var wizard = $('#fuelux-wizard').data('wizard')
            wizard.currentStep = 3;
            wizard.setState();
        })
        //determine selected step
        //wizard.selectedItem().step


        //hide or show the other form which requires validation
        //this is for demo only, you usullay want just one form in your application
        $('#skip-validation').removeAttr('checked').on('click', function () {
            $validation = this.checked;
            if (this.checked) {
                $('#sample-form').hide();
                $('#validation-form').removeClass('hide');
            }
            else {
                $('#validation-form').addClass('hide');
                $('#sample-form').show();
            }
        })


        //documentation : http://docs.jquery.com/Plugins/Validation/validate


        $.mask.definitions['~'] = '[+-]';
//        $('#phone').mask('(999) 999-9999');
//
//        jQuery.validator.addMethod("phone", function (value, element) {
//            return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
//        }, "请输入一个有效的电话号码.");

        $('#validation-form').validate({
            errorElement: 'div',
            errorClass: 'help-block',
            focusInvalid: false,
            rules: {
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 5
                },
                name:{
                  required :true,
                  minlength:3
                },
//                password2: {
//                    required: true,
//                    minlength: 5,
//                    equalTo: "#password"
//                },
//                name: {
//                    required: true
//                },
//                phone: {
//                    required: true,
//                    phone: 'required'
//                },
//                url: {
//                    required: true,
//                    url: true
//                },
                comment: {
                    required: true
                },
                state: {
                    required: true
                },
                platform: {
                    required: true
                },
                subscription: {
                    required: true
                },
                gender: {
                    required: true,
                },
                agree: {
                    required: true,
                }
            },

            messages: {
                email: {
                    required: "请输入有效的email地址.",
                    email: "请输入有效的email地址."
                },
                password: {
                    required: "请输入有效的密码.",
                    minlength: "请输入有效的密码."
                },
                name:{
                    required:"请输入姓名",
                    minlength:"名字太短了"
                },
                subscription: "请至少选择一项",
                gender: "请选择性别",
                agree: "请勾选同意协议"
            },


            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },

            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
                $(e).remove();
            },

            errorPlacement: function (error, element) {
                if (element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
                    var controls = element.closest('div[class*="col-"]');
                    if (controls.find(':checkbox,:radio').length > 1) controls.append(error);
                    else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
                }
                else if (element.is('.select2')) {
                    error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
                }
                else if (element.is('.chosen-select')) {
                    error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
                }
                else error.insertAfter(element.parent());
            },

            submitHandler: function (form) {
            },
            invalidHandler: function (form) {
            }
        });


    });
    function finishModify(){

       if (confirm("确定提交信息吗?")){




               $.ajax({

                   type: "POST",
                   url: "./updateUser",
                   data: $('#validation-form').serialize(),
                   dataType: "html",


                       error: function(){alert('Error');},
                   success: function(result){alert(result);}
               });
       }else{
           alert("0");
       }
       /* bootbox.dialog({
            message: "确认要提交修改吗",
            buttons: {
                "success": {
                    "label": "确定并关闭",
                    "className": "btn-sm btn-danger",

                },
                "danger": {
                    "label": "取消提交",
                    "className": "btn-sm btn-primary",
                },
            }
        });*/
    }


</script>
</body>
</html>
