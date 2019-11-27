<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
<!-- 页面头部 /-->