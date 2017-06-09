<?php exit;?>001528360350fc53d78d7b0328bd6177085ee50bae60s:2948:"a:2:{s:8:"template";s:2884:"<!doctype html>
<!--[if lt IE 7 ]><html class="ie6 homepage no-js" lang="zh-CN"><![endif]-->
<!--[if IE 7 ]><html class="ie7 homepage no-js" lang="zh-CN"><![endif]-->
<!--[if IE 8 ]><html class="ie8 homepage no-js" lang="zh-CN"><![endif]-->
<!--[if IE 9 ]><html class="ie9 homepage no-js" lang="zh-CN"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="homepage no-js" lang="zh-CN"><!--<![endif]-->
<head>
<title><?php echo $sys["site_title"];?></title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="renderer" content="webkit">
<meta name="author" content="LHVE TEAM, www.lhave.com">
<meta name="robots" content="index, follow">
<meta name="googlebot" content="index, follow">
<script src="/lhavecms/themes/htkeyun/js/modernizr.min.js"></script>
<link href="/lhavecms/themes/htkeyun/css/general.css" rel="stylesheet" type="text/css">
<link href="/lhavecms/themes/htkeyun/css/res/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/lhavecms/themes/htkeyun/css/index.css" rel="stylesheet" type="text/css">
<link href="/lhavecms/themes/htkeyun/css/subpage.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="/lhavecms/themes/htkeyun/js/library/html5shiv.js"></script>
<script src="/lhavecms/themes/htkeyun/js/library/respond.js"></script>
<![endif]-->
<script id="seajsnode" charset="utf-8" src="/lhavecms/themes/htkeyun/js/sea.min.js"></script>
<script src="/lhavecms/themes/htkeyun/js/general.config.js"></script>
</head>
<body>
<header id="global_header" class="g-header">
  <div class="container g-header-con">
    <h1 class="g-header-logo">
      <a href="/lhavecms" class="u-lnk"><span>寻学库教育培训平台</span></a>
    </h1>
    <nav class="g-navbar">
			<ul class="listnavs-grp">

			<?php if ($categoryInfo['class_id']==null){ ?>
			<li class="listnav-item current"><a href="/lhavecms">首页<i></i></a></li>
			<?php }else{ ?>
			<li class="listnav-item"><a href="/lhavecms">首页<i></i></a></li>
			<?php } ?>

			<?php $listList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "parent_id"=>0, "order"=>"sequence asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
			
			<?php if ($list['class_id']==$categoryInfo['class_id']){ ?>
			<li class="listnav-item current"><a href="<?php echo $list["curl"];?>"><?php echo $list["name"];?><i></i></a></li>
			<?php }else{ ?>	
			<li class="listnav-item"><a href="<?php echo $list["curl"];?>"><?php echo $list["name"];?><i></i></a></li>		
			<?php } ?>
            <?php } ?>
				
			</ul>
		</nav>
    <div class="g-hd-telp"><p><i></i><?php echo $sys["phone"];?></p></div>
  </div>
</header>";s:12:"compile_time";i:1496824350;}";