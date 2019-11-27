<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 页面头部 -->
<!-- 页面头部 -->
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
<!-- 页面头部 -->
<header class="main-header">

	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
			<span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown user user-menu">
					<a href=/pages/main.jsp>
						返回官网首页
					</a>

				</li>
				<!-- Notifications: style can be found in dropdown.less -->

				<!-- Tasks: style can be found in dropdown.less -->
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="../img/user1-128x128.jpg" class="user-image" alt="User Image">
						管理员:${USER_SESSION.username}
					</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header">
							<img src="../img/user1-128x128.jpg" class="img-circle" alt="User Image">

							<p>
								管理员:${USER_SESSION.username}
								<small>最后登录 11:20AM</small>
							</p>

						</li>

						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<button href="/pages/AdminMin.jsp" class="btn btn-default btn-flat">首页</button>
							</div>
							<div class="pull-right">
								<a href="${pageContext.request.contextPath}/AdminLogout.action"
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