<?php exit;?>0015282524486e455cacff034bacb4644b5cc1fbbc3bs:3994:"a:2:{s:8:"template";s:3930:"<!doctype html>
<html class="no-js login-html" lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<title>管理员登录 - LHAVE后台管理中心</title>
<meta name="author" content="LHVE TEAM, www.lhave.com">
<meta name="copyright" content="Copyright lhave.com 版权所有">
<script src="/lhavecms/public/login/js/modernizr.js"></script>
<link href="/lhavecms/public/login/css/lh.core.css" rel="stylesheet" type="text/css">
<link href="/lhavecms/public/login/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/lhavecms/public/login/css/lh.login.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
<script src="/lhavecms/public/login/js/html5shiv.js"></script>
<script src="/lhavecms/public/login/js/respond.js"></script>
<![endif]-->
<script charset="utf-8" src="/lhavecms/public/js/jquery.js"></script>
<script>
  $(function() {
    $("#adminLoginForm").submit(function() {
      if ($("#txtUserName").val() == "") {
        $("#txtUserName").focus();
        return false;
      }
      if ($("#txtUserPwd").val() == "") {
        $("#txtUserPwd").focus();
        return false;
      }
    });
  });
</script>
</head>
<body class="login-body">
<header class="login-header">
  <div class="header-inner">
    <div class="hd-logo">
      <h1><a href="http://www.lhave.com" title="云南岚海网络信息技术有限公司" target="_blank">岚海网络 - 昆明网站建设技术研发中心</a></h1>
    </div>
    <div class="hd-right"></div>
  </div>
</header>
<div class="g-prcontain" id="loginPage">
  <div class="login-section fn-tbl" id="login-wrap">
    <div class="fn-tblcell">
      <section class="container login-grid">
        <div class="row">
          <div class="col-xs-5 ctrl-w">
            <section class="login-area">
              <form id="adminLoginForm" class="form-horizontal" method="post" action="<?php echo url();?>">
                <header class="la-hd">
                  <h3>岚海网络 后台管理系统<span>v1.02</span></h3>
                  <small>Content Manage System</small>
                </header>
                <div class="la-block">
                  <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="txtUserName" name="username" maxlength="30" placeholder="请输入用户帐号">
                    <span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span>
                  </div>
                  <div class="form-group has-feedback">
                    <input type="password" class="form-control" id="txtUserPwd" name="password" maxlength="30" placeholder="请输入密码">
                    <span class="glyphicon glyphicon-lock form-control-feedback" aria-hidden="true"></span>
                  </div>
                </div>
                <div class="la-bottom">
                  <input type="submit" id="alf-btn-submit" class="btn alf-submit" value="登录">
                </div>
              </form>
            </section>
          </div>
        </div>
      </section>
    </div>
  </div>
</div>
<footer class="login-footer">
  <div class="container footer-block">
    <p><a href="http://www.lhave.com" target="_blank" title="昆明网站建设">岚海网络&nbsp;&nbsp;昆明网站建设技术研发中心</a></p>
    <p>Copyright<i class="fa fa-copyright"></i>2001 - <script type="text/javascript">document.write(new Date().getFullYear())</script>&nbsp;&nbsp;<a href="http://www.lhave.com" target="_blank">LHave.com</a>&nbsp;&nbsp;All Rights Reserved<span style="margin-left:10px;">滇ICP备11000188号</p>
  </div>
</footer>
</body>
</html>";s:12:"compile_time";i:1496716448;}";