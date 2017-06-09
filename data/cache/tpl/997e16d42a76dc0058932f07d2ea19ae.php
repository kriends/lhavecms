<?php exit;?>0015285167398584e3da5cf25282e348c6c5cd2330bas:2980:"a:2:{s:8:"template";s:2916:"<?php $__Template->display("themes/htkeyun/header"); ?>





<div class="g-wrapper care-banner">
	<section class="container sp-banner-cont">
		<form action="" class="form-care">
			<div class="form-group01 fn-clearfix">
				<div class="u-text"><input type="text" placeholder="请输入预定时的手机号" class="txt" /></div>
				<input type="button" value="预订查询" class="sh-ubtn" />
			</div>
		</form>
	</section>
</div>
<main class="sp-main">
	<div class="container sp-banner-cont">
		<section class="sp-wrape reserve">
			<header class="sp-hd">
				<h2>正规旅游车  合法资质保障</h2>
				<p>专业化团队，强大系统支持，全国化网络，24小时服务。</p>
			</header>
			<ul class="sp-bd sp-reserve-item fn-clearfix">

			<?php $listList = service("car","Label","carInfo",array( "app"=>"car", "label"=>"carInfo", "parent_id"=>0));  if(is_array($listList)) foreach($listList as $list){ ?>
             
				<li class="sp-reserve-list">
					<a class="re-pict" href="<?php echo $list["url"];?>"><img src="<?php echo $list["image"];?>"/></a>
					<div class="re-price-content">
						<p class="ever-price">￥<?php echo $list["sale"];?>/<em>/每日起</em></p>
						<p class="car-name"><?php echo $list["name"];?></p>
						<p class="p-num">乘坐人数：  30人/39人/50人 /59人</p>
						<a href="subpage_infor.html" class="order-link">立即预约</a>
						<div class="sp-boder"></div>
					</div>
				</li>
				<?php } ?>
				<!-- <li class="sp-reserve-list">
					<a class="re-pict" href="javascript:void:(0)"><img src="/lhavecms/themes/htkeyun/images/temp__/reserve_03.jpg"/></a>
					<div class="re-price-content">
						<p class="ever-price">￥450.00/<em>/每日起</em></p>
						<p class="car-name">宇通客车</p>
						<p class="p-num">乘坐人数：  30人/39人/50人 /59人</p>
						<a href="#" class="order-link">立即预约</a>
						<div class="sp-boder"></div>
					</div>
				</li>
				<li class="sp-reserve-list">
					<a class="re-pict" href="javascript:void:(0)"><img src="/lhavecms/themes/htkeyun/images/temp__/reserve_03.jpg"/></a>
					<div class="re-price-content">
						<p class="ever-price">￥450.00/<em>/每日起</em></p>
						<p class="car-name">宇通客车</p>
						<p class="p-num">乘坐人数：  30人/39人/50人 /59人</p>
						<a href="#" class="order-link">立即预约</a>
						<div class="sp-boder"></div>
					</div>
				</li> -->
			</ul>
		</section>
	</div>
</main>
	<script src="/lhavecms/themes/htkeyun/js/library/jquery.min.js"></script>
	<script src="/lhavecms/themes/htkeyun/js/library/jquery_plugins/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
   $(function(){ $('input, textarea').placeholder(); });
  </script>
<!-- ****** FOOTER ****** -->
<?php $__Template->display("themes/htkeyun/footer"); ?>
</body>
</html>";s:12:"compile_time";i:1496980739;}";