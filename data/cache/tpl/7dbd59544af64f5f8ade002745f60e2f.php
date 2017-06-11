<?php exit;?>00152868978267a2070480426d50005d8b6a44ae2b4fs:7813:"a:2:{s:8:"template";s:7749:"<?php $__Template->display("themes/htkeyun/header"); ?>

<div class="first-screen g-wrapper">
  <section class="hp-banner-wrap">
    <div class="swiper-container welcome-arrow">
      <div class="swiper-arrow-box">
          <div class="swiper-arrow-container">
            <a class="arrow arrow-left" href="#"></a> 
            <a class="arrow arrow-right" href="#"></a> 
          </div>
      </div>
      <div class="swiper-wrapper">
        <div class="swiper-slide red-slide swiper-slide-visible swiper-slide-active">
          <div class="swiper-slide-img">
            <a href="#">
              <img src="/lhavecms/themes/htkeyun/images/temp__/homepage_banner_1.jpg"/>
            </a>
           </div>
         </div>
         <div class="swiper-slide blue-slide">
           <div class="swiper-slide-img">
             <a href="#"><img src="/lhavecms/themes/htkeyun/images/temp__/homepage_banner_1.jpg"/></a>
           </div> 
         </div>
         <div class="swiper-slide blue-slide">
           <div class="swiper-slide-img">
             <a href="#"><img src="/lhavecms/themes/htkeyun/images/temp__/homepage_banner_1.jpg"/></a>
           </div> 
         </div>
         <div class="swiper-slide blue-slide">
           <div class="swiper-slide-img">
             <a href="#"><img src="/lhavecms/themes/htkeyun/images/temp__/homepage_banner_1.jpg"/></a>
           </div> 
         </div>
			</div>
			<div class="pagination m-pagin"></div>
		</div>
	</section>
</div>
<div class="hp-section cartype-section">
	<section class="container sect-panel car-type">
		<header class="panel-hd">
			<h2>恒光客运，车型介绍</h2>
			<p>专业化团队，强大系统支持，全国化网络，24小时服务。</p>
		</header>
		<div class="panel-bd fn-clearfix cab">
			<ul class="cab-item fn-clearfix">
				<li class="cab-list">
					<a href="subpage_infor.html">
						<div class="clInfo cab-bg1">
							<p class="clPrice fn-clearfix">
                <span class="fl color9">商务用车</span>
                <span class="color6 fr"><dfn>¥<big>300</big></dfn>/每天起</span>
              </p>
							<p class="cab-seat-num"><em>7座</em><em>8座</em></p>
							<p class="cab-slogin">安全性更高、人性化更好等显著优势，全面适应旅游、客运、团体用户的多种需求，是行内当之无愧的标杆。安全性更高、人性化更好等显著优势，全面适应旅游、客运、团体用户的多种需求，是行内当之无愧的标杆。安全性更高、人性化更好等显著优势，全面适应旅游、客运、团体用户的多种需求，是行内当之无愧的标杆。</p>
							<span class="triangle"></span>
						</div>
						<span class="cap-picture"><img src="/lhavecms/themes/htkeyun/images/temp__/car-size_06.jpg"/></span>
					</a>
				</li>
				<li class="cab-list">
					<a href="javascript:void(0)">
						<span class="cap-picture"><img src="/lhavecms/themes/htkeyun/images/temp__/car-size_03.jpg"/></span>
						<div class="clInfo cab-bg1">
						  <span class="triangle triangle-top"></span>
							<p class="clPrice fn-clearfix">
                <span class="fl color9">猫仔车</span>
                <span class="color6 fr"><dfn>¥<big>300</big></dfn>/每天起</span>
              </p>
							<p class="cab-seat-num"><em>7座</em><em>8座</em></p>
							<p class="cab-slogin">安全性更高、人性化更好等显著优势，全面适应旅游、客运、团体用户的多种需求，是行内当之无愧的标杆。</p>
						</div>
					</a>
				</li>
				<li class="cab-list">
					<a href="javascript:void(0)">
						<div class="clInfo cab-bg2">
						  <span class="triangle triangle-bg"></span>
							<p class="clPrice fn-clearfix">
                <span class="fl color9">中车/大车</span>
                <span class="color6 fr"><dfn>¥<big>300</big></dfn>/每天起</span>
              </p>
							<p class="cab-seat-num"><em>7座</em><em>8座</em></p>
							<p class="cab-slogin">安全性更高、人性化更好等显著优势，全面适应旅游、客运、团体用户的多种需求，是行内当之无愧的标杆。</p>
						</div>
						<span class="cap-picture"><img src="/lhavecms/themes/htkeyun/images/temp__/car-size_08.jpg"/></span>
					</a>
				</li>
			</ul>
		</div>
		<span class="triangle triangle-bg2"></span>
	</section>
</div>
<div class="hp-section site-section">
	<section class="container sect-panel site">
		<header class="panel-hd">
			<h2>云南景区介绍———人间有四季，云南独一春</h2>
			<p>自然景观和人文景观的荟萃之地。悠久的历史、独特的地质结构</p>
		</header>
		<div class="panel-bd site-content">
			<ul class="site-content-hd fn-clearfix">
				<?php $listList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "parent_id"=>26));  if(is_array($listList)) foreach($listList as $list){ ?>
				<?php if ($list['class_id']==$categoryInfo['class_id']){ ?>
				<li class="on active">
					<a href="javascript:void(0)"><?php echo $list["name"];?></a>
				</li>
				<?php }else{ ?>
				<li>
					<a href="javascript:void(0)"><?php echo $list["name"];?></a>
				</li>
				<?php } ?>
				<?php } ?>

			</ul>

			<a href="javascript:void(0)" class="site-menu site-slides-left prev"></a>
			<a href="javascript:void(0)" class="site-menu site-slides-right next"></a>
			
			<div class="site-content-bd">
			<?php $channelList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "parent_id"=>26));  if(is_array($channelList)) foreach($channelList as $channel){ ?>
				<div class="site-cnt">
				
					<ul class="idx-site-item fn-clearfix">
					
					<?php $listList = service("lhave","Label","contentList",array( "app"=>"lhave", "label"=>"contentList", "class_id"=>$channel['class_id'], "limit"=>4));  if(is_array($listList)) foreach($listList as $list){ ?>
					 <li class="idx-site-list">
						<span class="site-pic">
						  <a href="<?php echo $list["aurl"];?>">
						    <img src="<?php echo $list["image"];?>"/>
						    <strong class="site-name"><?php echo $list["title"];?></strong>
						  </a>
						</span>
						<div class="site-list-text">
							<p><?php echo $list["description"];?></p>
							<a href="<?php echo $list["curl"];?>">查看详细</a>
						</div>
					</li>
					<?php } ?>
				</ul>
				</div>
				<?php } ?>
				
			</div>
		</div>
	</section>
</div>
<div class="hp-section information-section">
	<section class="container sect-panel information">
		<header class="panel-hd">
			<h2>新闻资讯</h2>
			<p>第一时间了解恒光客运观点及行业动态</p>
		</header>
		<div class="panel-bd">
		<section class="infor-item fn-clearfix">
		<?php $listList = service("lhave","Label","contentList",array( "app"=>"lhave", "label"=>"contentList", "class_id"=>24, "limit"=>4));  if(is_array($listList)) foreach($listList as $list){ ?>
			<article class="infor-list">
				<a href="<?php echo $list["aurl"];?>">
					<img src="<?php echo $list["image"];?>"/>
				</a>
				<div class="idx-infor-text">
					<p><a href="<?php echo $list["aurl"];?>"><?php echo $list["description"];?></a></p>
				</div>
			</article>
			<?php } ?>
		</section>
		<a href="<?php echo $list["curl"];?>" class="more-infor-link">更多资讯></a>
		</div>
	</section>
</div>
<!-- ****** FOOTER ****** -->
<?php $__Template->display("themes/htkeyun/footer"); ?>

<script>
$app["common_module"] = ['common'];
$app["controller"] = 'homepage';
seajs.use($app["entrance"]);
</script>
</body>
</html>";s:12:"compile_time";i:1497153782;}";