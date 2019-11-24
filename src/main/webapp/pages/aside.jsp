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
				<p>管理员:${USER_SESSION.username}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/pages/AdminMain.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>系统管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/customer/findAll?page=1&size=5"> <i
							class="fa fa-circle-o"></i> 用户管理
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/role/findAll.do"> <i
							class="fa fa-circle-o"></i> 角色管理
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/member/findAll?page=1&size=5">
							<i class="fa fa-circle-o"></i> 导游信息管理
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/sysLog/findAll.do"> <i
							class="fa fa-circle-o"></i> 访问日志
					</a></li>
				</ul>
            </li>
			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>基础数据</span> <span class="pull-right-container"> <i
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

		</ul>
	</section>

	<div class="modal fade" id="updatePassword" tabindex="-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">密码修改</h4>
				</div>
				<div class="modal-body">
					<form name="editForm" method="post" action="${pageContext.request.contextPath}/ChangePassword.action">
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




	<!-- /.sidebar -->
</aside>