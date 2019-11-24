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
				<p>用户:${USER_SESSION.username}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/pages/AdminMain.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<!-- 菜单 -->

			<li class="treeview">
				<a href="#">
					<i class="fa fa-folder"></i> <span>个人中心</span>
					<span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
				</a>
				<ul class="treeview-menu">

					<li id="admin-login">
						<a href="all-admin-login.html">
							<i class="fa fa-circle-o"></i> 个人信息
						</a>
					</li>

					<li id="admin-register">
						<a href="all-admin-register.html">
							<i class="fa fa-circle-o"></i> 我的订单
						</a>
					</li>

					<li id="admin-404">
						<a href="all-admin-404.html">
							<i class="fa fa-circle-o"></i> 修改密码
						</a>
					</li>



				</ul>
			</li>




			<!-- 菜单 /-->
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