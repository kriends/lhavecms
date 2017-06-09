<?php exit;?>0015282523496a8093ec99c35b31b555854cc843c0f5s:2261:"a:2:{s:8:"template";s:2197:"<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><?php echo $media["title"];?></title>
<meta name="keywords" content="<?php echo $media["keywords"];?>" />
<meta name="description" content="<?php echo $media["description"];?>" />
<link href="/lhavecms/themes/default/css/base.css" rel="stylesheet" type="text/css">
<link href="/lhavecms/themes/default/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php $__Template->display("themes/default/head"); ?>
<div class="g-bd">
	<div class="g-mn">
		<div class="m-crumb">
			<ul class="f-cb">
				<li><a href="/lhavecms/">首页</a></li>
				<?php foreach ($crumb as $vo) { ?> 
				<li><i>&gt;</i><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a></li>
				<?php } ?>
			</ul>
		</div>
		<?php foreach ($pageList as $vo) { ?> 
		<div class="m-pg-lst">
			<div class="pic">
			<?php if ($vo['image']){ ?>
			<img src="<?php echo $vo["image"];?>" width="120" height="80">
			<!--{else /}-->
			<img src="/lhavecms/themes/default/images/fm.jpg" width="120" height="80">
			<?php } ?>
			</div>
			<div class="info">
				<div class="tt"><a href="<?php echo $vo["aurl"];?>"><?php echo $vo["title"];?></a></div>
				<div class="dsc"><?php echo $vo["description"];?></div>
				<div class="time"><span>时间：<?php echo date('Y-m-d',$vo['time']);?></span> <span>访问：<?php echo $vo["views"];?></span></div>
			</div>
			<div class="f-cb"></div>
		</div>
		<?php } ?>
		
		<div class="m-page"><?php echo $page;?> </div>
	</div>
	<div class="g-sd">
		<div class="m-sdc">
			<div class="tt">网站分类</div>
			<div class="cls">
				<ul>
                    <?php $listList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "limit"=>"10", "parent_id"=>"0"));  if(is_array($listList)) foreach($listList as $list){ ?>
					<li><a href="<?php echo $list["url"];?>"><?php echo $list["name"];?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		<?php $__Template->display("themes/default/sidebar"); ?>
	</div>
	<div class="f-cb"></div>
</div>
<?php $__Template->display("themes/default/foot"); ?>
</body>
</html>
";s:12:"compile_time";i:1496716349;}";