<?php exit;?>001528359108cb824c5b70c5ef5d6aff5b17f7d10d20s:2403:"a:2:{s:8:"template";s:2339:"<?php $__Template->display("themes/htkeyun/header"); ?>

<main class="sp-main1">
  <div class="bcrumbs-bar">
    <div class="container bcrumbs pd">
      <ol>
        <li class="bcrumbs-node bcn-start">您的位置：  </li>
        <li class="bcrumbs-node color1"><a href="/"> 首页  </a></li>
        <li class="bcrumbs-node"><a href="javascript:void(0);">景点介绍</a></li>
        <li class="bcrumbs-node active"><a href="javascript:void(0);">景点详细</a></li>
      </ol>
    </div>
  </div>
	<div class="sp-section">
		<section class="container sp-panel pd slight-one-detali fn-clearfix">
			<span class="lt light-dl-pic"><a href="#"><img src="<?php echo $contentInfo["image"];?>"/></a></span>
			<div class="lt light-dl-text">
				<h2><?php echo $contentInfo["title"];?></h2>
				<p class="light-dl-title">景点简介</p>
				<p><?php echo $contentInfo["description"];?></p>
				<p class="light-dl-site">位置：云南省<?php echo $contentInfo["class_name"];?></p>
			</div>
		</section>
	</div>
  <div class="sp-section sp-message">
		<div class="container pd">
			<div class="lt lt-box">
				<section class="car-messag-panel">
					<header class="sp-hd car-messag">
						<p>景点详细</p>
					</header>
					<div class="sp-bd sly-silt-bd sly-silt-bd1">
					  <!-- <img src="/lhavecms/themes/htkeyun/images/temp__/slight-detalis_10.jpg"/> -->
					
					      <?php echo $contentInfo["content"];?>
					
					</div>
				</section>
			</div>
			<div class="rt rt-box">
				<section class="car-messag-panel">
					<header class="sp-hd car-messag">
						<p>相关推荐</p>
					</header>
					<section class="sp-bd car-messagrt-bd">
					<?php $listList = service("lhave","Label","contentList",array( "app"=>"lhave", "label"=>"contentList", "pos_id"=>3, "limit"=>4));  if(is_array($listList)) foreach($listList as $list){ ?>
						<article class="car-messag-list">
							<a href="javascript:void(0)">
							 <img src="<?php echo $list["image"];?>"/>
							</a>
							<div class="car-messag-text"><p><?php echo $list["title"];?></em></p></div>
						</article>
						<?php } ?>

					</section>
				</section>
			</div>
		</div>
	</div>
</main>


<!-- ****** FOOTER ****** -->
<?php $__Template->display("themes/htkeyun/footer"); ?>
</body>
</html>";s:12:"compile_time";i:1496823108;}";