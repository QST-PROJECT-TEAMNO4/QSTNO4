<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>管理员:${USER_SESSION.username}</p>
                <a href="#"><i class="fa fa-circle text-success"></i>${null==USER_SESSION.id?'未登录':'已登录' }</a>
            </div>
        </div>

        <ul class="sidebar-menu">
            <li class="header">菜单</li>

            <li id="admin-index"><a href="/pages/AdminMain.jsp"><i class="fa fa-dashboard"></i> <span>首页</span></a>
            </li>

            <!-- 菜单 -->

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>角色管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="system-setting"><a
                            href="${pageContext.request.contextPath}/customer/findAll?page=1&size=5"> <i
                            class="fa fa-circle-o"></i> 用户管理
                    </a></li>

                    <li id="system-setting"><a
                            href="${pageContext.request.contextPath}/member/findAll?page=1&size=5">
                        <i class="fa fa-circle-o"></i> 导游信息管理
                    </a></li>
                </ul>
            </li>


            <li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
                <span>基础数据信息管理</span> <span class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
				</span>
            </a>
                <ul class="treeview-menu">

                    <li id="system-setting"><a
                            href="${pageContext.request.contextPath}/product/findAll?page=1&size=5">
                        <i class="fa fa-circle-o"></i> 产品管理
                    </a></li>
                    <li id="system-setting"><a
                            href="${pageContext.request.contextPath}/orders/queryOrders?page=1&size=4">
                        <i class="fa fa-circle-o"></i> 订单管理
                    </a></li>

                </ul>
            </li>

            <!-- 菜单 /-->

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>