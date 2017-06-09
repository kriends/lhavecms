<?php exit;?>00152835910758b9ef1e75f0d294dc537406e92d8400s:2591:"a:2:{s:8:"template";s:2527:"<?php $__Template->display("themes/htkeyun/header"); ?>


<main class="sp-main1">
  <div class="bcrumbs-bar">
    <div class="container bcrumbs pd">
      <ol>
        <li class="bcrumbs-node bcn-start">您的位置：  </li>
        <li class="bcrumbs-node color1"><a href="/"> 首页  </a></li>
        <li class="bcrumbs-node active"><a href="javascript:void(0);">景点介绍</a></li>
      </ol>
    </div>
  </div>
	<div class="sp-section">
		<section class="container sp-panel pd">
			<header class="sight-hd">
				<ul class="sight-hd-item fn-clearfix"> 

		
					<li<?php if ($categoryInfo["class_id"]==26 ){ ?> class="current"<?php } ?>><a href="<?php echo url('article/Category/index', array('class_id'=>26));?>">全部</a></li>



					<?php $listList = service("lhave","Label","categoryList",array( "app"=>"lhave", "label"=>"categoryList", "parent_id"=>26));  if(is_array($listList)) foreach($listList as $list){ ?>
					<?php if ($list['class_id']==$categoryInfo['class_id']){ ?>

                    <li class="current"><a href="<?php echo $list["curl"];?>"><?php echo $list["name"];?></a></li>
                    <?php }else{ ?>
                    <li><a href="<?php echo $list["curl"];?>"><?php echo $list["name"];?></a></li>
                    <?php } ?>
                    <?php } ?>

				</ul>
			</header>

			<div class="slight-bd">
			
				<ul class="slight-bd-item fn-clearfix">			
				
				<?php foreach ($pageList as $vo) { ?>
					<li onClick="slight-bd-list">
						<a href="<?php echo $vo["aurl"];?>">
						  <div class="slight-pic">
								<img src="<?php echo $vo["image"];?>"/>
								<div class="slight-name">
									<h2><?php echo $vo["title"];?></h2>
									<p>—— <?php echo $vo["class_name"];?> ——</p>
								</div>
						  </div>
							<div class="slight-text">
								<p><?php echo $vo["description"];?></p>
							</div>
						</a>
					</li>
					<?php } ?>
				</ul>
				
				<nav class="sp-pagenav sp-pagenav-s1 pt-30 pb-20">
                   <ul class="pagination sp-pagination">   
                      <li class="pn-item"><?php echo $page;?></a></li>
                   </ul>
                </nav>

		    </div>
		</section>
	</div>
</main>

<!-- ****** FOOTER ****** -->
<?php $__Template->display("themes/htkeyun/footer"); ?>


<script src="/lhavecms/themes/htkeyun/js/library/jquery.min.js"></script>
<script src="/lhavecms/themes/htkeyun/js/subpage.js"></script>
</body>
</html>";s:12:"compile_time";i:1496823107;}";