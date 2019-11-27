<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
            <li id="admin-index"><a
                    href="${pageContext.request.contextPath}/pages/main.jsp"><i
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