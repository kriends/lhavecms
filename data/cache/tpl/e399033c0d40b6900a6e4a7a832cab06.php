<?php exit;?>001528516002723889a11039c9858c63370973b4c65cs:1861:"a:2:{s:8:"template";s:1797:"<form method="post">
    <div class="panel dux-box">
        <div class="table-responsive">
            <table class="table table-hover treetable" id="table">
           		<thead>
                    <tr>
                        <th width="100">编号</th>
                        <th width="*">车辆名称</th>
                        <th width="*">车辆单价</th>
                        <th width="*">排序</th>
                        <th width="100">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (!empty($carList)){ ?>
                    <?php foreach ($carList as $vo) { ?>
                    <tr data-tt-id="<?php echo $vo["car_id"];?>"  data-tt-parent-id="<?php echo $vo["parent_id"];?>">
                        <td><?php echo $vo["car_id"];?></td>
                        <td><?php echo $vo["name"];?></td>
                        <td><?php echo $vo["sale"];?></td>
                        <td><?php echo $vo["sequence"];?></td>
                        <td>
                            <a class="button bg-blue button-small icon-pencil" href="<?php echo url($vo['app'].'/AdminCar/edit',array('car_id'=>$vo['car_id']));?>" title="修改"></a>
                            <a class="button bg-red button-small icon-trash-o js-del" href="javascript:;" url="<?php echo url($vo['app'].'/AdminCar/del');?>" data="<?php echo $vo["car_id"];?>" title="删除"></a>
                        </td>
                    </tr>

                    <?php } ?>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</form>
<script>
    Do.ready('base','treetable', function () {
       $('#table').duxTable({});
       $("table").treetable({ expandable: true });
    });
</script>";s:12:"compile_time";i:1496980002;}";