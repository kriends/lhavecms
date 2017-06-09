<?php exit;?>001528254146742cbebf2c05d8cbbd9dc8f88e982f9as:1197:"a:2:{s:8:"template";s:1133:"<form method="post">
    <div class="panel dux-box">
       <div class="table-responsive">
        <table id="table" class="table table-hover ">
            <tbody>
                <tr>
                    <th width="*">备份文件</th>
                    <th width="120">操作</th>
                </tr>
                <?php if (!empty($list)){ ?>
                <?php foreach ($list as $vo) { ?>
                <tr>
                  <td><?php echo $vo["name"];?></td>
                  <td> <a class="button bg-blue button-small icon-share-square-o js-action" url="<?php echo url('import');?>" href="javascript:;" data="<?php echo $vo["time"];?>"  title="还原"></a>
                       <a class="button bg-red button-small icon-trash-o js-del" href="javascript:;" data="<?php echo $vo["time"];?>" title="删除"></a></td>
                </tr>
                <?php } ?>
                <?php } ?>
            </tbody>
        </table>
        </div>
    </div>
</form>
<script>
Do.ready('base',function() {
	$('#table').duxTable({
		deleteUrl: "<?php echo url('del');?>"
	});
});
</script>";s:12:"compile_time";i:1496718146;}";