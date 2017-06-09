<?php exit;?>001528349102afb3439725c8495f4b2b0ef9d63420f0s:2393:"a:2:{s:8:"template";s:2329:"<?php $__Template->display("themes/htkeyun/header"); ?>




<main class="sp-main1">
  <div class="bcrumbs-bar">
    <div class="container bcrumbs">
      <ol>
        <li class="bcrumbs-node bcn-start">您的位置：  </li>  
        <li class="bcrumbs-node color1"><a href="/"> 首页  </a></li>
        <li class="bcrumbs-node active"><a href="javascript:void(0);">新闻资讯</a></li>
      </ol>
    </div>
  </div>
	<div class="sp-section sp-message news">
		<div class="container pd">
			<div class="lt lt-box">
				<section class="sp-news-panel">
				<?php foreach ($pageList as $list) { ?>                 
					<article class="sp-news-list">
						<a href="<?php echo $list["aurl"];?>" class="fn-clearfix">
							<span class="news-pic lt"><img src="<?php echo $list["image"];?>"/></span>
							<div class="lt new-list-text">
								<h2><?php echo $list["title"];?></h2>
								<p><?php echo $list["description"];?></p>
								<em><?php echo date('Y-m-d H:i:s',$list["time"]);?></em>
							</div>
						</a>
					</article>
					<?php } ?>
					
					
					  <nav class="sp-pagenav sp-pagenav-s1 pt-30 pb-20">
							<ul class="pagination sp-pagination">


								 <li class="pn-item"><?php echo $page;?></a></li>

							</ul>

					
          </nav>




				</section>
			</div>
			<div class="rt rt-box">
				<section class="car-messag-panel">
					<header class="sp-hd car-messag">
						<p>新闻推荐</p>
					</header>
					<section class="sp-bd news-rmd">
						<ul class="news-rmd-item">

						<?php $listList = service("lhave","Label","contentList",array( "app"=>"lhave", "label"=>"contentList", "pos_id"=>2, "limit"=>4));  if(is_array($listList)) foreach($listList as $list){ ?>

							<li class="news-rmd-list">
								<a href="<?php echo $list["aurl"];?>">
									<h3><?php echo $list["title"];?></h3>
									<p><?php echo $list["description"];?></p>
								</a>
							</li>
							<?php } ?>

						</ul>
						
			
					</section>
				</section>
			</div>
		</div>
	</div>
</main>


<!-- ****** FOOTER ****** -->
<?php $__Template->display("themes/htkeyun/footer"); ?>
<script>
$app["common_module"] = ['common'];
$app["controller"] = 'homepage';
seajs.use($app["entrance"]);
</script>
</body>
</html>";s:12:"compile_time";i:1496813102;}";