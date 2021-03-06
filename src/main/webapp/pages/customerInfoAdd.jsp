<%--
  Created by IntelliJ IDEA.
  User: 12845
  Date: 2019/11/22
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>注册</title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="../plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">


        <a href="all-admin-index.html"><b>大表哥</b>旅游网</a>


    </div>

    <div class="register-box-body">
        <p class="login-box-msg">完善个人信息</p>

        <form action="${pageContext.request.contextPath}/customer/updateCustomer.action" method="post">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="用户名" name="username" value="${CUSTOMER_SESSION.username}">
                <span class="glyphicon  form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback"  style="display:none;">
                <input type="text" class="form-control" placeholder="密码" name="password" value="${CUSTOMER_SESSION.password}">
                <span class="glyphicon  form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="真实姓名" name="name">
                <span class="glyphicon  form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <li  style="list-style: none;"  >性别：
                    <label><input type="radio" name="sex" value="1">女</label>
                    <label><input type="radio" name="sex" value="0">男</label>
                </li>
            </div>

            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="Email" name="email">
                <span class="glyphicon form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="phone" name="phoneNum">
                <span class="glyphicon form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="peopleID" name="peopleID">
                <span class="glyphicon  form-control-feedback"></span>
            </div>

            <div class="row">
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">保存</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>

</html>
