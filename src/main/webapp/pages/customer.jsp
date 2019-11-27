<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">


    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
           folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- bootstrap-datetimepicker -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- bootstrap-datetimepicker -->
    <!-- 页面meta /-->

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>

    <script>
        var editPassword = function () {
            $("#password1").blur(function () {
                var num = $("#password1").val().length;
                if (num < 6) {
                    $("#tip2").html("<font color=\"red\" size=\"2\">  太短了</font>");
                } else if (num > 18) {
                    $("#tip2").html("<font color=\"red\" size=\"2\">  太长了</font>");
                } else {
                    $("#tip2").html("<font color=\"green\" size=\"2\"> OK</font>");
                }
            });

            $("#newPassword").blur(function () {
                var tmp = $("#password1").val();
                var num = $("#newPassword").val().length;
                if ($("#newPassword").val() != tmp) {
                    $("#tip3").html("<font color=\"red\" size=\"2\">  和第一次输入不同</font>");
                } else {
                    if (num >= 6 && num <= 18) {
                        $("#tip3").html("<font color=\"green\" size=\"2\">  OK</font>");
                    } else {
                        $("#tip3").html("<font color=\"red\" size=\"2\">  太短或太长</font>");
                    }
                }
            });

            $("#updatePassword").modal();
        }
    </script>
    <%--修改密码验证--%>
    <script>
        var submitPassword = function () {
            var flag = true;
            var old = $("#oldPassword").val();
            var pass = $("#password1").val();
            var pass2 = $("#newPassword").val();
            var num1 = $("#password1").val().length;
            var num2 = $("#newPassword").val().length;
            if (num1 != num2 || num1 < 6 || num2 < 6 || num1 > 18 || num2 > 18 || pass != pass2) {
                flag = false;
            } else {
                flag = true;
            }
            if (flag) {

                return confirm("确认提交？")
            }
        }
    </script>

</head>

<body class="hold-transition skin-purple sidebar-mini">


<div class="modal fade" id="updatePassword" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="exampleModalLabel">密码修改</h4>
            </div>
            <div class="modal-body">
                <form name="editForm" method="post"
                      action="${pageContext.request.contextPath}/customer/CPassword.action">
                    <div class="form-group">
                        <label>原密码：</label>
                        <input type='password' id="oldPassword" class="form-control" name="oldPassword" required
                               placeholder="原密码">
                        <div style="display: inline" id="tip1"></div>
                    </div>
                    <div class="form-group">
                        <label>新密码:</label>
                        <input type='password' id="password1" name="password1" class="form-control" required
                               placeholder="长度为: 6-18">
                        <div style="display: inline" id="tip2"></div>
                    </div>
                    <div class="form-group">
                        <label>再次输入:</label>
                        <input type='password' id="newPassword" name="newPassword" class="form-control" required
                               placeholder="必须和第一次一样">
                        <div style="display: inline" id="tip3"></div>
                    </div>

                    <div class="modal-footer">
                        <button onclick="submitPassword()" class="btn btn-primary" ng-disabled="editForm.$invalid">确定
                        </button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="wrapper">

    <!-- 页面头部 -->
    <%--		<jsp:include page="header.jsp"></jsp:include>--%>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="header1.jsp"></jsp:include>

    <jsp:include page="aside1.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                数据管理 <small>数据列表</small>
            </h1>
<%--            <ol class="breadcrumb">--%>
<%--                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>--%>
<%--                <li><a href="#">数据管理</a></li>--%>
<%--                <li class="active">数据列表</li>--%>
<%--            </ol>--%>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <div class="register-box-body">
                <p class="login-box-msg">个人信息中心</p>

                <form action="/customer/updateCustomer2.action" method="post">
                    <div class="form-group has-feedback">
                        <input type="text" style="display:none;" class="form-control" placeholder="id" value="${CUSTOMER_SESSION.id}" name="id">
                        <span class="glyphicon  form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback"  style="display:none;">
                        <input type="text" style="display:none;" class="form-control" placeholder="密码" name="password" value="${CUSTOMER_SESSION.password}">
                        <span class="glyphicon  form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="用户名" name="username" value="${CUSTOMER_SESSION.username}">
                        <span class="glyphicon  form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="真实姓名" name="name" value="${CUSTOMER_SESSION.name}" readonly="readonly">
                        <span class="glyphicon  form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        性别 :${1==CUSTOMER_SESSION.sex?'女':'男'}
                        <span class="glyphicon  form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" placeholder="Email" name="email" value="${CUSTOMER_SESSION.email}">
                        <span class="glyphicon form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="phone" name="phoneNum" value="${CUSTOMER_SESSION.phoneNum}">
                        <span class="glyphicon form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="peopleID" name="peopleID" value="${CUSTOMER_SESSION.peopleID}" readonly>
                        <span class="glyphicon  form-control-feedback"></span>
                    </div>

                    <div class="row">
                        <!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat" style="align-content: center">更新信息</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>

            </div>








<%--            <form action="/customer/updateCustomer2.action" method="post">--%>
<%--                <div>--%>
<%--                    <div>--%>
<%--                        <ul>--%>
<%--                            <li style="list-style: none;">--%>
<%--                                <input style="display:none;" value="${CUSTOMER_SESSION.id}" name="id"/>--%>
<%--                            </li>--%>
<%--                            <li style="list-style: none;">--%>
<%--                                密码: <input style="display:none;" value="${CUSTOMER_SESSION.password}" name="password"/>--%>
<%--                            </li>--%>
<%--                            <li style="list-style: none;">--%>
<%--                                用户名: <input value="${CUSTOMER_SESSION.username}" name="username" />--%>
<%--                            </li>--%>
<%--                            <li style="list-style: none;">--%>
<%--                                真实姓名: <input value="${CUSTOMER_SESSION.name}" name="name" readonly="readonly"/>--%>
<%--                            </li>--%>

<%--                            <li style="list-style: none;">性别： ${1==CUSTOMER_SESSION.sex?'女':'男'}--%>
<%--                                <label><input type="radio" name="sex" value="1" >女</label>--%>
<%--                                <label><input type="radio" name="sex" value="0">男</label>--%>
<%--                            </li>--%>

<%--                            <li style="list-style: none;">--%>
<%--                                手机号码:<input style="border:none;" type="tel" value="${CUSTOMER_SESSION.phoneNum}" name="phoneNum">--%>
<%--                            </li>--%>
<%--                            <li style="list-style: none;">--%>
<%--                                邮箱: <input style="border:none;" value="${CUSTOMER_SESSION.email}" name="email">--%>
<%--                            </li>--%>
<%--                            <li style="list-style: none;">--%>
<%--                                身份号码:<input style="border:none;" value="${CUSTOMER_SESSION.peopleID}" name="peopleID">--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="col-xs-4">--%>
<%--                        <button type="submit" id="button" class="btn btn-primary btn-block btn-flat">修改</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </form>--%>


        </section>
        <!-- 正文区域 /-->


    </div>



    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2014-2017 <a
                href="http://www.itcast.cn">研究院研发部</a>.
        </strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>

    function changePageSize() {
        //获取下拉框的值
        var pageSize = document.getElementById("pagesizeOp").value;

        //向服务器发送请求，改变每页显示的行数
        location.href = "${pageContext.request.contextPath}/product/findAll?page=1&size=" + pageSize;

    }

    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });

</script>
</body>

</html>