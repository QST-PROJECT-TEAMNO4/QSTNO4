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
    <script type="text/javascript">
        window.Env = {"WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","W_HTTP":"https:\/\/w.mafengwo.cn","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","PAGELET_HTTP":"https:\/\/pagelet.mafengwo.cn","JS_HOST":"js.mafengwo.net","TONGJI_HOST":"tongji.mafengwo.cn","UID":0,"CSTK":"cae8b57aa36590fd4ad3617f57695096_8d9d34140d16f2263f425446671f0e7c","GOOGLE_MAP_KEY":"AIzaSyD-Su0x_rPy1xehlMBcMyTqWkU49Bk53nQ"};
    </script>

    <link href="https://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup:css+mfw-header.2015^YlVS^1566868943.css" rel="stylesheet" type="text/css"/>

    <link href="https://css.mafengwo.net/css/cv/css+mfw-index.2015:css+jquery-ui-1.9.1.custom.min:css+hotel+datepicker-range^ZFM^1563871867.css" rel="stylesheet" type="text/css"/>


    <script language="javascript" src="https://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics:js+advert+inspector^alw^1574417533.js" type="text/javascript" crossorigin="anonymous"></script>

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
                        <input type='text' id="username" class="form-control" name="username"  value="${CUSTOMER_SESSION.username}" readonly="readonly">
                    </div>
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
                        <a  style="color: blue">
                            ${null==CUSTOMER_SESSION.id?'<button  onclick="login()">未登录</button>':'已登录' }
                        </a>

                    </li>
                    <script>
                        function login() {
                            window.location.href="${pageContext.request.contextPath}/pages/login.jsp"

                        }
                    </script>
                    <li class="dropdown user user-menu">
                        <a href=/pages/AdminLogin.jsp>
                            进入后台
                        </a>

                    </li>
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
                    <a href="#"><i class="fa fa-circle text-success"></i>${null==CUSTOMER_SESSION.id?'未登录':'已登录' }</a>
                </div>
            </div>

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">菜单</li>
                <li id="admin-index">
                    <a href="${pageContext.request.contextPath}/pages/main.jsp"><i
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
                    <span>我的信息</span> <span class="pull-right-container"> <i
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
                                href="${pageContext.request.contextPath}/orders/CusQueryOrders?Id=${CUSTOMER_SESSION.id}">
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
            <div id="header" xmlns="http://www.w3.org/1999/html">
                <div class="mfw-header">
                    <div class="header-wrap clearfix" id="_j_head_nav_warper">
                        <div><a class="mfw-logo" title="大表哥自由行" href="https://www.mafengwo.cn/"></a></div>
                        <ul class="head-nav" data-cs-t="headnav" id="_j_head_nav">
                            <li class="head-nav-index _j_head_nav_index" data-cs-p="index" data-tab-item="首页"><a href="#">首页</a></li>
                            <li class="head-nav-place _j_head_nav_mdd" data-cs-p="mdd" data-tab-item="目的地"><a href="#" title="目的地">目的地</a></li>
                            <li class="head-nav-gonglve _j_head_nav_gonglve" data-cs-p="gonglve" data-tab-item="旅游攻略"><a href="#" title="旅游攻略">旅游攻略</a></li>
                            <li class="head-nav-sales _j_head_nav_sales head-nav-dropdown _j_sales_nav_show" id="_j_nav_sales" data-cs-p="sales" data-tab-item="去旅行">
                                <a class="drop-toggle" href="https://www.mafengwo.cn/sales/" style="cursor: pointer;display: block;border-bottom:0 none;" data-sales-nav="去旅行">
                                    <span>去旅行<i class="icon-caret-down"></i></span>
                                </a>
                                <div class="dropdown-menu dropdown-sales hide _j_sales_top" id="_j_sales_panel" data-cs-t="sales_nav">
                                    <ul>
                                        <li><a target="_blank" href="https://www.mafengwo.cn/sales/" data-sales-nav="自由行">自由行<i class="i-hot">hot</i></a></li>
                                        <li><a target="_blank" href="https://www.mafengwo.cn/sales/0-0-0-0-0-0-0-0.html?group=4" data-sales-nav="跟团游">跟团游</a></li>
                                        <li><a target="_blank" href="https://www.mafengwo.cn/localdeals/" data-sales-nav="当地游">当地游</a></li>
                                        <li><a target="_blank" href="https://www.mafengwo.cn/sales/0-0-0-5-0-0-0-0.html" data-sales-nav="邮轮">邮轮</a></li>
                                        <li><a target="_blank" href="https://www.mafengwo.cn/sales/visa/" data-sales-nav="签证">签证</a></li>

                                    </ul>
                                </div>
                            </li>
                            <li class="head-nav-flight _j_head_nav_flight" data-cs-p="flight" data-tab-item="机票"><a href="https://www.mafengwo.cn/flight/" title="国内机票">机票</a></li>
                            <li class="head-nav-hotel _j_head_nav_hotel" data-cs-p="hotel" data-tab-item="酒店"><a href="https://www.mafengwo.cn/hotel/" title="酒店">订酒店</a></li>
                            <li class="head-nav-community _j_head_nav_community head-nav-dropdown _j_shequ_nav_show" id="_j_nav_community" data-cs-p="community" data-tab-item="社区">
                                <div class="drop-toggle"><span>社区<i class="icon-caret-down"></i></span></div>
                                <!-- 社区下拉面板 begin -->
                                <div class="dropdown-panel dropdown-community hide _j_shequ_top no-image" id="_j_community_panel" data-cs-t="community_nav">
                                    <div class="panel-wrapper">
                                        <ul class="nav-list clearfix">
                                            <li class="h"><a href="https://www.mafengwo.cn/wenda/" target="_blank" title="问答" data-cs-p="wenda">问答<i class="i-hot">hot</i></a></li>
                                            <li><a href="https://www.mafengwo.cn/mall/things.php" target="_blank" title="大表哥周边" data-cs-p="things">大表哥周边<i class="i-new">new</i></a></li>
                                            <li><a href="https://www.mafengwo.cn/club/" target="_blank" title="蜂首俱乐部" data-cs-p="club">蜂首俱乐部</a></li>
                                            <li><a href="https://www.mafengwo.cn/together/" target="_blank" title="结伴" data-cs-p="together">结伴</a></li>
                                        </ul>
                                        <ul class="nav-list-sub clearfix">

                                            <li><a href="https://www.mafengwo.cn/group/" target="_blank" title="大表哥旅行家" data-cs-p="group">小组论坛</a></li>
                                            <li><a href="https://www.mafengwo.cn/rudder/" target="_blank" title="分舵同城" data-cs-p="rudder">分舵同城</a></li>
                                            <li><a href="https://www.mafengwo.cn/auction/" target="_blank" title="大表哥拍卖行" data-cs-p="paimai">大表哥拍卖行</a></li>

                                            <!--<li><a href="https://www.mafengwo.cn/postal/" target="_blank" title="游记纪念工厂" data-cs-p="postal">游记纪念工厂</a></li>-->
                                            <li><a href="https://www.mafengwo.cn/photo_pk/prev.php" target="_blank" title="照片PK" data-cs-p="photo_pk">照片PK</a></li>
                                            <li><a href="https://www.mafengwo.cn/focus/" target="_blank" title="真人兽" data-cs-p="focus">真人兽</a></li>
                                            <li><a href="https://www.mafengwo.cn/mall/virtual_goods.php" target="_blank" title="道具商店" data-cs-p="virtual">道具商店</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- 社区下拉面板 end -->
                            </li>
                            <li class="head-nav-app _j_head_nav_app" data-cs-p="app" data-tab-item="APP"><a href="https://www.mafengwo.cn/app/intro/gonglve.php" title="APP">APP</a></li>
                        </ul>
                        <div class="head-search" data-online="1">
                            <div class="head-search-wrapper">
                                <div class="head-searchform">
                                    <input name="q" type="text" id="_j_head_search_input" autocomplete="off">
                                    <a role="button" href="javascript:" class="icon-search" id="_j_head_search_link"></a>
                                </div>
                            </div>
                        </div>
                        <div data-pagelet id="pagelet-block-6bdf63cb95443cdc1c5c84cc62f2169f" class="" data-api="apps:user:pagelet:pageViewHeadInfo" data-params="{&quot;type&quot;:1}" data-async="1" data-controller="/js/pageletcommon/pageHeadUserInfoWWWNormal"></div>
                    </div>
                    <div class="shadow"></div>
                </div>

                <!-- 新自由行菜单 begin -->
                <div class="dropdown-bar" style="display: none">
                    <div class="content">
                        <ul class="clearfix ul-dropdown-bar" id="Js_middleNav">
                            <li data-type="sales"><a href="http://www.mafengwo.cn/sales/">自由行</a></li>
                            <li data-type="freewalker"><a href="http://www.mafengwo.cn/sales/0-0-0-0-0-0-0-0.html?group=4">跟团游</a></li>
                            <li data-type="localdeals"><a href="http://www.mafengwo.cn/localdeals/">当地游</a></li>

                            <li data-type="visa"><a href="http://www.mafengwo.cn/sales/visa/">签证</a></li>
                            <li data-type="wifi"><a href="http://www.mafengwo.cn/localdeals/0-0-0-21-0-0-0-0.html">全球WiFi</a></li>
                            <li data-type="cruise"><a href="http://www.mafengwo.cn/sales/0-0-0-5-0-0-0-0.html">邮轮</a></li>


                        </ul>
                    </div>

                </div>
                <!-- 新自由行菜单 end -->
                <script>
                    //判断是否显示 下拉bar
                    ;(function () {
                        window.showBarFlag = true;
                        var realPathName = location.pathname,$nav = $('#Js_middleNav');
                        var regExp = /localdeals|sales|insurance|activity/gi;
                        var pathArr = realPathName.match(regExp);

                        var firstSalesType = 0;
                        if ([1, 3, 34, 50, 51, 52].indexOf(window.Env.salesType) > -1) {
                            firstSalesType = 3
                        } else if ([4, 40, 41, 42, 43, 44].indexOf(window.Env.salesType) > -1) {
                            firstSalesType = 4
                            //  } else if ([11, 90, 91, 92, 93, 94, 95, 96].indexOf(window.Env.salesType) > -1) {
                            //    firstSalesType = 11
                        } else if ([6, 30, 32, 33, 35, 36].indexOf(window.Env.salesType) > -1) {
                            firstSalesType = 6
                        } else if ([5].indexOf(window.Env.salesType) > -1) {
                            firstSalesType = 5
                        } else if ([21, 22, 70].indexOf(window.Env.salesType) > -1) {
                            firstSalesType = 21
                        } else if ([28, 29, 31, 99].indexOf(window.Env.salesType) > -1) {
                            firstSalesType = 1
                        } else {
                            firstSalesType = 2
                        }
                        // } else if ([2, 9, 12, 13, 15, 17, 20, 21, 22, 23, 24, 25, 26, 46, 47, 48, 49, 60, 61, 62, 64, 65, 66, 67, 68, 70, 71, 72, 74, 75, 76, 77, 78, 79])
                        var urlSalesType = realPathName.split('-')[3];
                        if(window.Env.middleNavHide) { $('.dropdown-bar').hide();return;}
                        if(urlSalesType == 5 || firstSalesType ==5){
                            $nav.children('[data-type="cruise"]').addClass('on');
                            window.showBarFlag = false;
                            $('.dropdown-bar').show();
                        }else if(urlSalesType == 21 || firstSalesType ==21){
                            $nav.children('[data-type="wifi"]').addClass('on');
                            window.showBarFlag = false;
                            $('.dropdown-bar').show();
                        }else if(urlSalesType == 4 || window.Env.sales_title_tag == 'visa' || firstSalesType == 4){
                            $nav.children('[data-type="visa"]').addClass('on');
                            window.showBarFlag = false;
                            $('.dropdown-bar').show();
                        }else if(window.Env.sales_title_tag == 'semi_self_service' || realPathName == '/sales/0-0-0-6-0-0-0-0.html?group=4' || firstSalesType == 6){
                            $nav.children('[data-type="freewalker"]').addClass('on');
                            window.showBarFlag = false;
                            $('.dropdown-bar').show();
                        }
                        else if(window.Env.salesType) {
                            switch(firstSalesType|0) {
                                case 1:
                                case 3:
                                    $nav.children('[data-type="sales"]').addClass('on');
                                    break;
                                case 2:
                                    $nav.children('[data-type="localdeals"]').addClass('on');
                                    break;
                                case 30:
                                case 6:
                                    $nav.children('[data-type="freewalker"]').addClass('on');
                                    break;
                                default:
                                    $nav.children('[data-type="localdeals"]').addClass('on');
                                    break;
                            }
                            window.showBarFlag = false;
                            $('.dropdown-bar').show();
                        }
                        else {
                            if( pathArr){
                                if(pathArr.length == 1 && pathArr[0] != 'activity'){
                                    switch(pathArr[0]){
                                        case 'localdeals':
                                            $nav.children('[data-type="localdeals"]').addClass('on');
                                            break;
                                        case 'insurance':
                                            $nav.children('[data-type="insurance"]').addClass('on');
                                            break;
                                        case 'sales':
                                            $nav.children('[data-type="sales"]').addClass('on');
                                            break;
                                        case 'flight':
                                            $nav.children('[data-type="flight"]').addClass('on');
                                            break;
                                        default:
                                            break;
                                    }
                                    window.showBarFlag = false;
                                    $('.dropdown-bar').show();
                                }else {
                                    if('activity'.indexOf(pathArr) != -1){
                                        window.showBarFlag  = true;
                                        $('.dropdown-bar').hide();
                                    }
                                }
                            }
                        }
                        // 点击时触发
                        $('.ul-dropdown-bar > li').on('click',function () {
                            $(this).addClass('on').siblings().removeClass('on');
                        });
                    })();

                </script>

            </div>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <div class="mfw-focus" id="_j_mfw_focus">
                <div class="show-slider" id="_j_top_pic_container">
                    <ul class="show-image">
                        <li class="first">
                            <a href="/i/17868238.html" target="_blank" class="show-pic"><img src="https://n1-q.mafengwo.net/s15/M00/14/D4/CoUBGV3dJsiAD5McACBsW0ruS1w677.png?imageMogr2%2Finterlace%2F1"></a>
                            <a href="/i/17868238.html" target="_blank" class="show-title dark">
                                <div class="date">
                                    <span class="day">27</span>/Nov.2019
                                </div>
                                <h3>胡志明市 | 漫步西贡，做个吟游诗人</h3>
                            </a>
                            <p class="show-info">图片来自于<font color="#FF9900"><a href="/travel-scenic-spot/mafengwo/11053.html" target="_blank">胡志明市</a></font>，此目的地共收藏了<font color="#FF9900"><a href="http://www.mafengwo.cn/photo/mdd/11053.html" target="_blank" rel="nofollow">93339</a></font>张<a href="/travel-scenic-spot/mafengwo/11053.html" target="_blank">胡志明市</a></font>图片。本片由<font color="#FF9900"><a href="http://www.mafengwo.cn/u/10318998.html" target="_blank">SpongeMel</a></font>荣誉出品！</p>
                        </li>
                        <li>
                            <a href="/i/17811640.html" target="_blank" class="show-pic"><img src="https://p1-q.mafengwo.net/s15/M00/A3/CF/CoUBGV3bzR6AGNOqACuX4Y0zw-U407.png?imageMogr2%2Finterlace%2F1"></a>
                            <a href="/i/17811640.html" target="_blank" class="show-title dark">
                                <div class="date">
                                    <span class="day">26</span>/Nov.2019
                                </div>
                                <h3>五月，在战斗民族亲历卫国战争纪念日</h3>
                            </a>
                            <p class="show-info">图片来自于<font color="#FF9900"><a href="/travel-scenic-spot/mafengwo/10300.html" target="_blank">俄罗斯</a></font>，此目的地共收藏了<font color="#FF9900"><a href="http://www.mafengwo.cn/photo/mdd/10300.html" target="_blank" rel="nofollow">611906</a></font>张<a href="/travel-scenic-spot/mafengwo/10300.html" target="_blank">俄罗斯</a></font>图片。本片由<font color="#FF9900"><a href="http://www.mafengwo.cn/u/17374830.html" target="_blank">Cecilia Z</a></font>荣誉出品！</p>
                        </li>
                        <li>
                            <a href="/i/17598718.html" target="_blank" class="show-pic"><img src="https://n1-q.mafengwo.net/s15/M00/0D/67/CoUBGV3aaYaAGOKNACTpyv4RHaA438.png?imageMogr2%2Finterlace%2F1"></a>
                            <a href="/i/17598718.html" target="_blank" class="show-title dark">
                                <div class="date">
                                    <span class="day">25</span>/Nov.2019
                                </div>
                                <h3>伊斯坦布尔的七日，东西交融的两千年</h3>
                            </a>
                            <p class="show-info">图片来自于<font color="#FF9900"><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank">土耳其</a></font>，此目的地共收藏了<font color="#FF9900"><a href="http://www.mafengwo.cn/photo/mdd/10053.html" target="_blank" rel="nofollow">983974</a></font>张<a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank">土耳其</a></font>图片。本片由<font color="#FF9900"><a href="http://www.mafengwo.cn/u/64946379.html" target="_blank">June Lam</a></font>荣誉出品！</p>
                        </li>
                        <li>
                            <a href="/i/14144319.html" target="_blank" class="show-pic"><img src="https://b1-q.mafengwo.net/s15/M00/D8/97/CoUBGV3ZIqmAV40gAB7Z8dqA4js301.png?imageMogr2%2Finterlace%2F1"></a>
                            <a href="/i/14144319.html" target="_blank" class="show-title dark">
                                <div class="date">
                                    <span class="day">24</span>/Nov.2019
                                </div>
                                <h3>国民女儿也犯愁，爸妈要看人妖秀（带着父母去旅行的第三年，最详细的曼谷+华欣行程单）</h3>
                            </a>
                            <p class="show-info">图片来自于<font color="#FF9900"><a href="/travel-scenic-spot/mafengwo/11045.html" target="_blank">曼谷</a></font>，此目的地共收藏了<font color="#FF9900"><a href="http://www.mafengwo.cn/photo/mdd/11045.html" target="_blank" rel="nofollow">571000</a></font>张<a href="/travel-scenic-spot/mafengwo/11045.html" target="_blank">曼谷</a></font>图片。本片由<font color="#FF9900"><a href="http://www.mafengwo.cn/u/59540366.html" target="_blank">Amy_Li是大表姐</a></font>荣誉出品！</p>
                        </li>
                        <li>
                            <a href="/i/17756443.html" target="_blank" class="show-pic"><img src="https://p1-q.mafengwo.net/s15/M00/94/09/CoUBGV3X1MKAK_kaABgNBi4VeXE440.png?imageMogr2%2Finterlace%2F1"></a>
                            <a href="/i/17756443.html" target="_blank" class="show-title dark">
                                <div class="date">
                                    <span class="day">23</span>/Nov.2019
                                </div>
                                <h3>冬日情书，记忆印画</h3>
                            </a>
                            <p class="show-info">图片来自于<font color="#FF9900"><a href="/travel-scenic-spot/mafengwo/10183.html" target="_blank">日本</a></font>，此目的地共收藏了<font color="#FF9900"><a href="http://www.mafengwo.cn/photo/mdd/10183.html" target="_blank" rel="nofollow">8076237</a></font>张<a href="/travel-scenic-spot/mafengwo/10183.html" target="_blank">日本</a></font>图片。本片由<font color="#FF9900"><a href="http://www.mafengwo.cn/u/47240988.html" target="_blank">芷。游悦</a></font>荣誉出品！</p>
                        </li>
                    </ul>
                    <ul class="show-nav">
                        <li><a href="javascript:"><img src="https://n1-q.mafengwo.net/s15/M00/14/A7/CoUBGV3dJrCARPurAAbHlw6NqOw994.png?imageMogr2%2Fthumbnail%2F%21108x67r%2Fgravity%2FCenter%2Fcrop%2F%21108x67%2Fquality%2F90" height="62" width="110"><span></span></a></li>
                        <li><a href="javascript:"><img src="https://b1-q.mafengwo.net/s15/M00/A3/A8/CoUBGV3bzQ2Adf2pAAc7JbSO_Js284.png?imageMogr2%2Fthumbnail%2F%21108x67r%2Fgravity%2FCenter%2Fcrop%2F%21108x67%2Fquality%2F90" height="62" width="110"><span></span></a></li>
                        <li><a href="javascript:"><img src="https://p1-q.mafengwo.net/s15/M00/0D/2F/CoUBGV3aaWiALkyXAAV8vT0AtKU984.png?imageMogr2%2Fthumbnail%2F%21108x67r%2Fgravity%2FCenter%2Fcrop%2F%21108x67%2Fquality%2F90" height="62" width="110"><span></span></a></li>
                        <li><a href="javascript:"><img src="https://b1-q.mafengwo.net/s15/M00/D7/88/CoUBGV3ZIj-AMVvoAAae_cv7ACE570.png?imageMogr2%2Fthumbnail%2F%21108x67r%2Fgravity%2FCenter%2Fcrop%2F%21108x67%2Fquality%2F90" height="62" width="110"><span></span></a></li>
                        <li><a href="javascript:"><img src="https://n1-q.mafengwo.net/s15/M00/93/DD/CoUBGV3X1KmAcmpcAAUnuVAOJGY963.png?imageMogr2%2Fthumbnail%2F%21108x67r%2Fgravity%2FCenter%2Fcrop%2F%21108x67%2Fquality%2F90" height="62" width="110"><span></span></a></li>
                    </ul>
                    <a class="show-more" target="_blank" href="/app/calendar.php">历历在目</a>
                </div>
                <div class="search-container" id="_j_index_search">
                    <div class="search-group">
                        <div class="searchtab" id="_j_index_search_tab">
                            <ul class="clearfix">
                                <li class="tab-selected" data-index="0"><i></i>全部</li>
                                <li data-index="1"><i></i>酒店</li>
                                <li data-index="2"><i></i>目的地</li>
                                <li data-index="3"><i></i>去旅行</li>
                                <li data-index="4"><i></i>机票</li>
                            </ul>
                        </div>
                        <!-- 全部 begin -->
                        <div class="searchbar" id="_j_index_search_bar_all">
                            <div class="search-wrapper">
                                <div class="search-input">
                                    <input name="q" type="text" placeholder="搜目的地/攻略/酒店/旅行特价" id="_j_index_search_input_all" autocomplete="off">
                                </div>
                            </div>
                            <div class="search-button" id="_j_index_search_btn_all">
                                <a role="button" href="javascript:"><i class="icon-search"></i></a>
                            </div>
                        </div>
                        <!-- 全部 end -->
                        <!-- 酒店 begin -->
                        <div class="searchbar searchbar-hotel hide" id="_j_index_search_bar_hotel">
                            <div class="search-wrapper">
                                <form action="/hotel/s.php" method="get">
                                    <div class="search-input">
                                        <input name="keyword" type="text" placeholder="请输入国家、地区、城市名称" id="_j_index_search_input_hotel" autocomplete="off">
                                    </div>
                                </form>
                                <div class="search-date" id="_j_check_in">
                                    <input type="text" readonly="readonly">
                                    <span></span>
                                    <i class="icon-cal"></i>
                                </div>
                                <div class="search-date" id="_j_check_out">
                                    <input type="text" readonly="readonly">
                                    <span></span>
                                    <i class="icon-cal"></i>
                                </div>
                            </div>
                            <div class="search-button" id="_j_index_search_btn_hotel">
                                <a role="button" href="javascript:"><i class="icon-search"></i></a>
                            </div>
                        </div>
                        <!-- 酒店 end -->
                        <!-- 目的地 begin -->
                        <div class="searchbar hide" id="_j_index_search_bar_mdd">
                            <form action="/search/s.php" method="get">
                                <div class="search-wrapper">
                                    <div class="search-input">
                                        <input name="q" type="text" placeholder="我要去..."  id="_j_index_search_input_mdd" autocomplete="off">
                                    </div>
                                </div>
                                <div class="search-button" id="_j_index_search_btn_mdd">
                                    <a role="button" href="javascript:"><i class="icon-search"></i></a>
                                </div>
                            </form>
                        </div>
                        <!-- 目的地 end -->
                        <!-- 出行服务 begin -->
                        <div class="searchbar hide" id="_j_index_search_bar_sales">
                            <div class="search-wrapper">
                                <div class="search-input">
                                    <input type="text" placeholder="产品名称/目的地/优惠" id="_j_index_search_input_sales" autocomplete="off">
                                </div>
                            </div>
                            <div class="search-button" id="_j_index_search_btn_sales">
                                <a role="button" href="javascript:"><i class="icon-search"></i></a>
                            </div>
                        </div>
                        <!-- 出行服务 end -->
                        <!-- 机票 begin -->
                        <div class="searchbar hide search-flight" id="_j_index_search_bar_flight">
                            <div class="search-wrapper">
                                <div class="search-input flight-start">
                                    <input name="startcity" type="text" placeholder="出发城市" id="_j_index_search_input_flight_start" autocomplete="off">
                                </div>
                                <div class="search-input flight-end">
                                    <input name="endcity" type="text" placeholder="到达城市" id="_j_index_search_input_flight_end" autocomplete="off">
                                    <img class="search-input-exchange" id="_j_index_search_flight_exchange_btn" src="https://b4-q.mafengwo.net/s13/M00/E6/80/wKgEaVy1QDmAJy1YAAAC0ZrtOdM370.png" />
                                </div>
                                <div class="search-input search-date">
                                    <input id="_j_start_date" type="text" readonly="readonly">
                                    <i class="icon-cal"></i>
                                </div>
                            </div>
                            <div class="search-button" id="_j_index_search_btn_flight">
                                <a role="button" href="javascript:"><i class="icon-search"></i></a>
                            </div>
                        </div>
                        <div class="hot-city-layer" id="departCityLayerPop" style="display: none;">
                        </div>
                        <div class="hot-city-layer dest-city-warper" id="destCityLayerPop" style="display: none;">
                        </div>
                        <!-- 机票 end -->

                        <!-- 目的地suggest begin -->
                        <div class="search-suggest-panel search-suggest-place hide" id="_j_index_suggest_list_mdd">
                            <ul class="suggest-list"></ul>
                        </div>
                        <!-- 目的地suggest end -->
                        <!-- 酒店suggest begin -->
                        <div class="search-suggest-panel search-suggest-hotel hide" id="_j_index_suggest_list_hotel">
                        </div>
                        <!-- 酒店suggest end -->
                    </div>
                </div>
            </div>



            <script type="text/javascript">

                var $topPicContainer = $('#_j_top_pic_container'),
                    topPicSlideCnt = $topPicContainer.find('.show-image');

                function respondTopPicSize(ev) {
                    var clientWidth = $(window).width(),
                        picHeight = Math.round(clientWidth / 3);
                    $topPicContainer.height(picHeight);
                    topPicSlideCnt.find('img').each(function(idx, ele) {
                        var $img = $(ele),
                            imgHeight = parseInt($img.css('height'), 10);
                        if(imgHeight > picHeight) {
                            $img.css('marginTop', -Math.round((imgHeight - picHeight) / 2));
                        }
                    });
                }
                $(window).on('resize', respondTopPicSize).trigger('resize');
            </script>




            <style>
                #banner-con-gloable{
                    display: block;
                    position: fixed;
                    bottom: 0;
                    left: -100%;
                    z-index: 110;
                    width:100%;
                    height: 179px;
                    overflow-x: hidden;
                }
                #banner-con-gloable .banner-btn-con{
                    width: 100%;
                    height:162px;
                    background:rgba(30,15,8,0.95);
                    position: absolute;
                    bottom: 0;
                }
                #banner-con-gloable .banner-btn-con .close-btn{
                    position: absolute;
                    right: 35px;
                    top:24px;
                    z-index: 120;
                    height: 24px;
                    width: 24px;
                    cursor:pointer;
                }
                #banner-con-gloable .banner-image-con{
                    position: absolute;
                    right: 50%;
                    bottom: 0;
                    width: 1000px;
                    margin-right: -500px;
                }
                #float-pannel-gloable{
                    padding-left: 28px;
                    padding-bottom: 20px;
                    display: block;
                    position: fixed;
                    bottom: 0;
                    z-index: 110;
                    left: -230px;
                }
                #float-pannel-gloable .float-btn{
                    width: 24px;
                    height: 24px;
                    position: absolute;
                    right: 0;
                    top: 0;
                    z-index: 100;
                }
                #closed{
                    height:24px;
                    width:24px;
                    vertical-algin:top;
                    border:none;
                    cursor:pointer;
                }
            </style>

            <div id="float-pannel-gloable">
                <img class="float-image" src="https://p4-q.mafengwo.net/s14/M00/BB/8C/wKgE2l0r2W-ALHaeAACAt6lqXyA464.png" style="width:178px;">
                <div class="float-btn">
                    <img id="closed" src="https://n4-q.mafengwo.net/s13/M00/46/AC/wKgEaVy2xHeAZJhRAAADGY-wozY871.png"></div>
            </div>









            <script>
                $(function () {

                    var flag_page = location.href.match(/^(https|http):\/\/www\.mafengwo\.cn\/?$/g) ||
                        location.href.match(/^(https|http):\/\/www\.mafengwo\.cn(\/\?\S*)/g) ||
                        location.href.match(/(cn\/gonglve|cn\/yj\/|cn\/i\/|cn\/jd\/|cn\/xc\/|cn\/schedule\/|cn\/baike\/|cn\/poi\/|mdd|travel-scenic-spot)/g)

                    // if(!!flag_page && getCookie('ad_hide')!='1' && getCookie('ad_close_num')<2){
                    //     handleBannerShow();
                    // }
                });

                // 浮标关闭按钮点击
                $("#float-pannel-gloable .float-btn").click(function () {
                    $("#float-pannel-gloable").animate({ left:-230,},800,'swing');
                    add_cookie('ad_hide','1',1);
                    if(!getCookie('ad_close_num')){
                        add_cookie('ad_close_num',1,9999)
                    }else if(!!getCookie('ad_close_num')){
                        add_cookie('ad_close_num',getCookie('ad_close_num')*1+1,9999)
                    }
                });

                function add_cookie(name,value,n) {
                    var exp = new Date();
                    exp.setTime(exp.getTime() + 24*60*1000*60*n);
                    document.cookie=name+'='+value+';expires='+exp.toGMTString()+';path=/';
                }

                function getCookie(cname) {
                    var name = cname + "=";
                    var ca = document.cookie.split(';');

                    for(var i=0; i<ca.length; i++) {
                        var c = ca[i];
                        while (c.charAt(0)==' ') c = c.substring(1);
                        if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
                    }

                    return "";
                }

                function delCookie(name)
                {
                    var exp = new Date();
                    exp.setTime(exp.getTime() - 1);
                    var cval=getCookie(name);
                    if(cval!=null)
                        document.cookie= name + "="+cval+";expires="+exp.toGMTString();
                }

                function handleBannerShow() {
                    $("#float-pannel-gloable").animate({ left:0,},500,'swing');
                }

            </script>
            <link href="https://css.mafengwo.net/css/mfw-footer.css?1558532347" rel="stylesheet" type="text/css"/>

            <link href="https://css.mafengwo.net/css/mfw-toolbar.css?1537192876" rel="stylesheet" type="text/css"/>

            <div class="mfw-toolbar" id="_j_mfwtoolbar">
                <div class="toolbar-item-top">
                    <a role="button" class="btn _j_gotop">
                        <i class="icon_top"></i>
                        <em>返回顶部</em>
                    </a>
                </div>
                <div class="toolbar-item-feedback">
                    <a role="button" data-japp="feedback" class="btn">
                        <i class="icon_feedback"></i>
                        <em>意见反馈</em>
                    </a>
                </div>
                <div class="toolbar-item-code">
                    <a role="button" class="btn">
                        <i class="icon_code"></i>
                    </a>
                    <a role="button" class="mfw-code _j_code">


                        <img src="https://p1-q.mafengwo.net/s1/M00/6C/51/wKgIC1t_6TuASybrAADGUPUHjr021.jpeg?imageMogr2%2Fthumbnail%2F%21450x192r%2Fgravity%2FCenter%2Fcrop%2F%21450x192%2Fquality%2F90" width="450" height="192" >
                    </a>
                    <!--<div class="wx-official-pop"><img src="http://images.mafengwo.net/images/qrcode-weixin.gif"><i class="_j_closeqrcode"></i></div>-->
                </div>
                <div class="toolbar-item-down">
                    <a role="button" class="btn _j_gobottom">
                        <i class="icon_down"></i>
                        <em>页面底部</em>
                    </a>
                </div>
            </div>


            <script language="javascript" type="text/javascript">
                if (typeof M !== "undefined" && typeof M.loadResource === "function") {
                    M.loadResource("https://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+jquery.lazyload:js+M+module+Pagination:js+index+ControllerRecommend:js+M+module+ClickToggle:js+M+module+Slider:js+CitySelectPop:js+xdate:js+hotel+module+FestivalDateConfig:js+jquery-ui-core:js+jquery-ui-datepicker:js+hotel+module+DateRangePicker:js+hotel+module+Datepicker:js+M+module+Storage:js+hotel+module+ModuleProvider:js+hotel+module+BookingDate:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+dialog+alert:js+hotel+module+Log:js+hotel+module+Search_v2:js+AIndex:js+module+app+Page:js+M+module+Toggle:js+index+AGinfoSearch:js+M+module+PageAdmin:js+M+module+Cookie:js+M+module+ResourceKeeper:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+ScrollObserver:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^YlVUQw^1564052076.js");
                }
            </script>
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
        <strong>Copyright &copy; 2019 <a href="main.jsp">青软实训Java4班 Team4</a>.</strong> All rights reserved.
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
