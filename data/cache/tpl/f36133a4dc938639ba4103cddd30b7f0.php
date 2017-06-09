<?php exit;?>001528348175e7cc72eab02bf65bf3d209570932c291s:1989:"a:2:{s:8:"template";s:1925:"<?php $__Template->display("themes/htkeyun/header"); ?>





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
				<section class="sp-news-dl-panel">
					<header class="news-detail-hd">
						<h2><?php echo $contentInfo["title"];?></h2>
						<p><span>发布时间：<?php echo date('Y-m-d H:i:s',$contentInfo["time"]);?></span><span>发布者：管理员</span></p>
					</header>
					<div class="news-detail-bd sly-silt-bd">
						<?php echo $contentInfo["content"];?>
					</div>
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
</html>";s:12:"compile_time";i:1496812175;}";