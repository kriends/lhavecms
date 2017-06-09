<?php exit;?>00152844894072636a778644d8468352889acb8d3c7ds:2317:"a:2:{s:8:"template";s:2253:"<form method="post">
    <div class="panel dux-box">
        <div class="panel-head">
            <strong>字段列表 [<?php echo $fieldsetInfo["name"];?>]</strong>
        </div>
        <div class="table-responsive">
            <table id="table" class="table table-hover ">
                <tbody>
                    <tr>
                        <th width="*">名称</th>
                        <th width="*">字段</th>
                        <th width="*">排序</th>
                        <th width="*">类型</th>
                        <th width="*">验证</th>
                        <th width="100">操作</th>
                    </tr>
                    <?php foreach ($list as $vo) { ?>
                    <tr>
                        <td><?php echo $vo["name"];?></td>
                        <td><?php echo $vo["field"];?></td>
                        <td><?php echo $vo["sequence"];?></td>
                        <td>
                            <?php echo $typeField[$vo[ 'type']][ 'name']; ?>
                        </td>

                        <td>
                            <?php $vo[ 'verify_data']=base64_decode($vo[ 'verify_data']); ?>
                            <?php if ($vo['verify_data']){ ?>
                            <span class="tag bg-green">验证</span>
                            <?php }else{ ?>
                            <span class="tag bg-red">不验证</span>
                            <?php } ?>
                        </td>
                        <td>
                            <a class="button bg-blue button-small icon-pencil" href="<?php echo url('edit',array('field_id'=>$vo['field_id'],'fieldset_id'=>$vo['fieldset_id']));?>" title="修改"></a>
                            <a class="button bg-red button-small icon-trash-o js-del" href="javascript:;" data="<?php echo $vo["field_id"];?>" title="删除"></a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</form>
<script>
    Do.ready('base', function () {
        $('#table').duxTable({
            deleteUrl: "<?php echo url('del');?>"
        });
    });
</script>";s:12:"compile_time";i:1496912940;}";