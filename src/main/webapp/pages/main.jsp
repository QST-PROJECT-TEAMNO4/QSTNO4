<%--
  Created by IntelliJ IDEA.
  User: 12845
  Date: 2019/11/16
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>主页</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="../plugins/morris/morris.css">
    <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="../plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="../plugins/select2/select2.css">
    <link rel="stylesheet" href="../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="../plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="../plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="../plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="../plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">

    <script>
      var Id=${CUSTOMER_SESSION.username};
    </script>
    <%--点击修改密码触发事件--%>
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
                <form name="editForm" method="post" action="${pageContext.request.contextPath}/customer/CPassword.action">
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
                        <button onclick="submitPassword()" class="btn btn-primary" ng-disabled="editForm.$invalid">确定</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="wrapper">

    <!-- 页面头部 -->
    <header class="main-header">


        <!-- Logo -->
        <a href="main.jsp" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>数据</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>大表哥</b>旅游网</span>
        </a>


        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../img/user1-128x128.jpg" class="user-image" alt="User Image">
                            用户:${CUSTOMER_SESSION.username}
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="../img/user1-128x128.jpg" class="img-circle" alt="User Image">

                                <p>
                                    用户:${CUSTOMER_SESSION.username}
                                    <small>最后登录 11:20AM</small>
                                </p>

                            </li>

                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <button onclick="editPassword()" class="btn btn-default btn-flat">修改密码</button>
                                </div>
                                <div class="pull-right">
                                    <a href="${pageContext.request.contextPath}/customer/CustomerLogout.action"
                                       class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
                         class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>用户:${CUSTOMER_SESSION.username}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">菜单</li>
                <li id="admin-index"><a
                        href="${pageContext.request.contextPath}/pages/welcom.jsp"><i
                        class="fa fa-dashboard"></i> <span>首页</span></a></li>

                <li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
                    <span>去旅游</span> <span class="pull-right-container"> <i
                            class="fa fa-angle-left pull-right"></i>
				</span>
                </a>
                    <ul class="treeview-menu">

                        <li id=""><a
                                href="${pageContext.request.contextPath}/product/findAllCus"> <i
                                class="fa fa-circle-o"></i> 旅游商品页面
                        </a></li>
                    </ul></li>
                <li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
                    <span>基础数据</span> <span class="pull-right-container"> <i
                            class="fa fa-angle-left pull-right"></i>
				</span>
                </a>
                    <ul class="treeview-menu">

                        <li id="system-setting"><a
                                href="${pageContext.request.contextPath}/pages/customer.jsp">
                            <i class="fa fa-circle-o"></i> 个人中心
                        </a></li>

                    </ul>

                    <ul class="treeview-menu">

                        <li id="aaa"><a
                                href="${pageContext.request.contextPath}/orders/CusQueryOrders?Id=${CUSTOMER_SESSION.username}">
                            <i class="fa fa-circle-o"></i> 我的订单
                        </a></li>

                    </ul>


                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
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
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">数据管理</a></li>
                <li class="active">数据列表</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <%--										<button type="button" class="btn btn-default" title="新建"--%>
                                    <%--											onclick="location.href='${pageContext.request.contextPath}/pages/product-add.jsp'">--%>
                                    <%--											<i class="fa fa-file-o"></i> 新建--%>
                                    <%--										</button>--%>
                                    <%--										<button type="button" class="btn btn-default" title="删除">--%>
                                    <%--											<i class="fa fa-trash-o"></i> 删除--%>
                                    <%--										</button>--%>
                                    <%--										<button type="button" class="btn btn-default" title="开启">--%>
                                    <%--											<i class="fa fa-check"></i> 开启--%>
                                    <%--										</button>--%>
                                    <%--										<button type="button" class="btn btn-default" title="屏蔽">--%>
                                    <%--											<i class="fa fa-ban"></i> 屏蔽--%>
                                    <%--										</button>--%>
                                    <a type="button" class="btn btn-default" title="刷新" href="${pageContext.request.contextPath}/customer/findAll?page=1&size=5 ">
                                        <i class="fa fa-refresh"></i> 刷新
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <form action="/customer/findByKeyWord">
                                <%--									<button type="submit" class="btn bg-maroon">搜索</button>--%>
                                <div class="has-feedback">
                                    <input type="text" class="form-control input-sm"
                                           placeholder="按下回车搜索" name="Keyword" >
                                    <span class="glyphicon glyphicon-search form-control-feedback" ></span>
                                </div>
                            </form>

                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <%--										<th class="" style="padding-right: 0px;"><input--%>
                                <%--											id="selall" type="checkbox" class="icheckbox_square-blue">--%>
                                <%--										</th>--%>
                                <%--										<th class="sorting_asc">ID</th>--%>
                                <th class="sorting_desc">用户名</th>
                                <th class="sorting_asc sorting_asc_disabled">邮箱</th>
                                <th class="sorting_desc sorting_desc_disabled">电话号码</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>


                            <c:forEach items="${pageInfo.list}" var="customer">

                                <tr>
                                        <%--											<td><input name="ids" type="checkbox"></td>--%>
                                        <%--											<td>${product.id }</td>--%>
                                    <td>${customer.username }</td>
                                    <td>${customer.email }</td>
                                    <td>${customer.phoneNum}</td>



                                    </td>
                                    <td class="text-center">
                                            <%--												<button type="button" class="btn bg-olive btn-xs">订单</button>--%>
                                            <%--												<button type="button" class="btn bg-olive btn-xs" value="${product.id}">详情</button>--%>
                                        <a type="button" class="btn bg-olive btn-xs"  href='#' onclick="resetPassword('${customer.username}',${customer.id})">重置密码</a>
                                            <%--												<a type="button" class="btn bg-olive btn-xs"  href='#' onclick="deleteById('${product.productName }',${product.id})">删除</a>--%>
                                    </td>
                                </tr>
                            </c:forEach>
                            <script>
                                /**
                                 * 删除产品
                                 * @param productId  商品ID
                                 */
                                function resetPassword(username,customerId) {
                                    if(window.confirm('确定要将用户【名称为："'+username+'"】的密码重置为默认密码【123456】吗?')){
                                        window.location.href='/customer/update?Id='+customerId;

                                    }


                                }



                                /**
                                 *
                                 * 获取商品状态文本
                                 * @param productStatus
                                 */
                                function getProductStatusText(productStatus){
                                    var statusText;
                                    if(0==productStatus)
                                    {
                                        statusText="关闭";
                                    }else if(1==productStatus){
                                        statusText="开启";
                                    }else{
                                        statusText="未知";
                                    }
                                    return statusText;
                                }
                                $(function(){
                                    $('td[data-product-status]').each(function (i) {
                                        var productStatus=$(this).data('product-status');
                                        var statusText=getProductStatusText(productStatus);
                                        $(this).text(statusText);
                                    });
                                });

                            </script>
                            </tbody>
                            <!--
                        <tfoot>
                        <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                        </tr>
                        </tfoot>-->
                        </table>
                        <!--数据列表/-->

                        <!--工具栏-->
                        <%--							<div class="pull-left">--%>
                        <%--								<div class="form-group form-inline">--%>
                        <%--									<div class="btn-group">--%>
                        <%--										<button type="button" class="btn btn-default" title="新建">--%>
                        <%--											<i class="fa fa-file-o"></i> 新建--%>
                        <%--										</button>--%>
                        <%--										<button type="button" class="btn btn-default" title="删除">--%>
                        <%--											<i class="fa fa-trash-o"></i> 删除--%>
                        <%--										</button>--%>
                        <%--										<button type="button" class="btn btn-default" title="开启">--%>
                        <%--											<i class="fa fa-check"></i> 开启--%>
                        <%--										</button>--%>
                        <%--										<button type="button" class="btn btn-default" title="屏蔽">--%>
                        <%--											<i class="fa fa-ban"></i> 屏蔽--%>
                        <%--										</button>--%>
                        <%--										<button type="button" class="btn btn-default" title="刷新">--%>
                        <%--											<i class="fa fa-refresh"></i> 刷新--%>
                        <%--										</button>--%>
                        <%--									</div>--%>
                        <%--								</div>--%>
                        <%--							</div>--%>
                        <%--							<div class="box-tools pull-right">--%>
                        <%--								<div class="has-feedback">--%>
                        <%--									<input type="text" class="form-control input-sm"--%>
                        <%--										placeholder="搜索"> <span--%>
                        <%--										class="glyphicon glyphicon-search form-control-feedback"></span>--%>
                        <%--								</div>--%>
                        <%--							</div>--%>
                        <!--工具栏/-->

                    </div>
                    <!-- 数据表格 /-->


                </div>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            总共${pageInfo.pages}页，共${pageInfo.total}条数据。 每页
                            <select class="form-control" id="pagesizeOp" onchange="changePageSize()">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select> 条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li><a href="${pageContext.request.contextPath}/customer/findAll?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer/findAll?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>

                            <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                                <li><a href="${pageContext.request.contextPath}/customer/findAll?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
                            </c:forEach>


                            <li><a href="${pageContext.request.contextPath}/customer/findAll?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer/findAll?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a></li>
                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->



            </div>

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
        <strong>Copyright &copy; 2019 <a href="index.html">青软实训Java4班 Team4</a>.</strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="../plugins/daterangepicker/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script src="../plugins/adminLTE/js/app.min.js"></script>
<script src="../plugins/treeTable/jquery.treetable.js"></script>
<script src="../plugins/select2/select2.full.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="../plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="../plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="../plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="../plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="../plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="../plugins/ckeditor/ckeditor.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="../plugins/chartjs/Chart.min.js"></script>
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.categories.min.js"></script>
<script src="../plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="../plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="../plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="../plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
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
