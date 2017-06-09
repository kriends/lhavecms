<?php exit;?>001528357136416238b5e579e5a0d181d229c33896ebs:2365:"a:2:{s:8:"template";s:2301:"<?php $__Template->display("themes/htkeyun/header"); ?>

<main class="sp-main1">
	<div class="sp-section aboutus-banner">
		<section class="container sp-panel pd aboutus-item">
			<div class="aboutus-ban-pic"><img src="/lhavecms/themes/htkeyun/images/subpage/aboutus-ban_03.png"/></div>
			<div class="at-bg"></div>
		</section>
	</div>
	<div class="aboutus-content">
		<div class="container pd ">
			<div class="aboutus-content-lt lt">
				<section class="aslide-nav">
					<div class="aslide-nav-title">
						<span><img src="/lhavecms/themes/htkeyun/images/homepage/us-title_03.png"/></span>
					</div>
					<ul class="aslide-nav-item">
				     	<?php $listList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "parent_id"=>25, "order"=>"sequence asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
				        <?php if ($list['class_id']==$categoryInfo['class_id']){ ?>
						<li class="aslide-nav-list current"><a href="<?php echo $list["curl"];?>"><?php echo $list["name"];?></a></li>
						<?php }else{ ?>
						<li class="aslide-nav-list "><a href="<?php echo $list["curl"];?>"><?php echo $list["name"];?></a></li>
						<?php } ?>
						<?php } ?>
					</ul>
				</section>
			</div>
		  <div class="aboutus-content-rt lt">
		  <section class="aboutus-content-box">
					<div class="abt-bd">
					<?php echo $categoryInfo["content"];?>
					</div>
		  </section>

		    <?php $listList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "parent_id"=>25));  if(is_array($listList)) foreach($listList as $list){ ?>
		    <?php if ($list['class_id']==$categoryInfo['class_id']){ ?>
		    <section class="aboutus-content-box" style="display: none;">
					<header class="abt-hd">
						<h3><?php echo $list["name"];?></h3>
					</header>
					<div class="abt-bd">
					<?php echo $list["content"];?>
				
					</div>
				</section>
				<?php } ?>
				<?php } ?>

		  </div>
		</div>
	</div>

</main>

<!-- ****** FOOTER ****** -->
<?php $__Template->display("themes/htkeyun/footer"); ?>


	<script src="/lhavecms/themes/htkeyun/js/library/jquery.min.js"></script>
	<script src="/lhavecms/themes/htkeyun/js/subpage.js"></script>
</body>
</html>";s:12:"compile_time";i:1496821136;}";