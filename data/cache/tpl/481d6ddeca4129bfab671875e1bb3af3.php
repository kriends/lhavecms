<?php exit;?>001528252332fcc6e505147c83fb464000419c1e8f09s:1503:"a:2:{s:8:"template";s:1439:"<div class="u-sep10"></div>
<div class="m-sdc">
	<div class="tt">最新图文</div>
	<div class="pl">
		<ul>
        	<?php $listList = service("lhave","Label","contentList",array( "app"=>"lhave", "label"=>"contentList", "image"=>"true", "limit"=>"5"));  if(is_array($listList)) foreach($listList as $list){ ?>
			<li>
				<div class="pic"><img src="<?php echo $list["image"];?>" width="65" height="43"></div>
				<div class="info"><a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?></a></div>
			</li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="u-sep10"></div>
<div class="m-sdc">
	<div class="tt">最新TAG</div>
	<div class="tag"> 
    	<?php $listList = service("lhave","Label","tagsList",array( "app"=>"lhave", "label"=>"tagsList", "limit"=>"5"));  if(is_array($listList)) foreach($listList as $list){ ?>
		<a href="<?php echo $list["url"];?>"><?php echo $list["name"];?></a> 
        <?php } ?>
	</div>
</div>
<div class="u-sep10"></div>
<div class="m-sdc">
	<div class="tt">友情链接</div>
	<div class="link">
		<ul>
        	<?php $listList = service("lhave","Label","formList",array( "app"=>"lhave", "label"=>"formList", "table"=>"link", "limit"=>"5"));  if(is_array($listList)) foreach($listList as $list){ ?>
			<li><a href="<?php echo $list["url"];?>" target="_blank"><?php echo $list["name"];?></a></li>
			<?php } ?>
		</ul>
	</div>
	<div class="f-cb"></div>
</div>
";s:12:"compile_time";i:1496716332;}";