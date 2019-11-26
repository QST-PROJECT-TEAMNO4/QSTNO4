<%--
  Created by IntelliJ IDEA.
  User: 12845
  Date: 2019/11/21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div >
    <h2>注册成功，已为您添加账号信息，接下来请完善个人信息</h2><a href="/pages/successPages/customerInfoAdd.jsp">页面无反应？，点我立即跳转</a>
</div>
<div>
    <p id="page_div">将在5秒后自动跳转到完善信息页面....</p>
</div>


<script language="javascript">
    var num = 4; //倒计时的秒数
    var URL = "/pages/successPages/customerInfoAdd.jsp";
    var id = window.setInterval('doUpdate()', 1000);
    function doUpdate() {
        document.getElementById('page_div').innerHTML = '将在'+num+'秒后自动跳转到首页' ;
        if(num == 0) {
            window.clearInterval(id);
            window.location = URL;
        }
        num --;
    }
</script>
</body>
</html>